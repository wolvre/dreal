open Batteries

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
    let out = IO.stdout in
    let (p, fs, pt) = Parser.main Lexer.start lexbuf in
    begin
      Global.set prec p;
      if !coqlib then
	String.print out "Require Import Reals.\nRequire Import Interval_tactic.\nOpen Scope R_scope.\n\n"
      else
	String.print out "Require Import Reals.\nRequire Import Gappa_tactic.\nOpen Scope R_scope.\n\n";	
      Ptree.check pt fs;
      Ptree.print_log stderr
    end
  with v ->
    Error.handle_exn v

let x = Printexc.catch run ()
