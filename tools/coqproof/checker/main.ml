open Batteries

let _ = Arith_status.set_error_when_null_denominator false
let spec = []
let src = Global.empty "src"      (* trace name *)
let prec = Global.empty "prec"
let coqlib = ref true
let usage = "Usage: main.native [<options>] <Trace File> \n<options> are:"
let args = Arg.align [
	       ("-i", Arg.Set coqlib, "    Using Coq.Interval (default)");
	       ("-g", Arg.Clear coqlib, "    Using Gappa (default)")]
let run () =
  let _ = Arg.parse args
    (fun x -> if Sys.file_exists x then Global.set src x
      else raise (Arg.Bad (x^": No such file"))) usage in
  try
    Error.init ();
    let lexbuf =
      Lexing.from_channel
        (if not (Global.isdef src) then
            stdin
         else open_in (Global.get_exn src)) in
    let dest_file = 
      let src_file = Global.get_exn src in
      if Filename.check_suffix src_file ".smt2.proof" then
	Filename.chop_suffix src_file ".smt2.proof"
      else
	try
	  Filename.chop_extension src_file
	with Invalid_argument _ -> src_file in
    let list_proofs = Parser.main Lexer.start lexbuf in
    let num = ref 0 in
    let ck_proof p fs pt =
      let out = 
	if !num > 0 then
	  open_out (dest_file^"_"^(string_of_int !num)^".v")
	else
	  open_out (dest_file^".v") in
      begin
	Global.set prec p;
	if !coqlib then
	  String.print out "Require Import Reals.\nRequire Import Interval_tactic.\nOpen Scope R_scope.\n\n"
	else
	  String.print out "Require Import Reals.\nRequire Import Gappa_tactic.\nOpen Scope R_scope.\n\n";	
	Ptree.check out pt fs;
	Ptree.print_log stderr;
	Ptree.reset_log;
	num := !num + 1;
	close_out out
      end in
    List.map (fun (p, fs, pt) -> ck_proof p fs pt) list_proofs
  with v ->
    Error.handle_exn v

let x =
  Printexc.catch run ()
