(*
   Soonho Kong, soonhok@cs.cmu.edu
*)
open Batteries
exception Error of string

let num_of_axioms = ref 0
let num_of_branches = ref 0                  (* DONE *)
let num_of_non_trivial_pruning = ref 0       (* DONE *)
let num_of_trivial_pruning = ref 0           (* DONE *)

type nenv = Env.nt
type formula = Basic.formula
type t = 
       | Hole
       | NAxiom of nenv
       | NBranch of nenv * t * t
       | NPrune of nenv * nenv * t

let print_log out =
  begin
    String.println out ("Axioms            #: " ^ (string_of_int !num_of_axioms));
    String.println out ("Branches          #: " ^ (string_of_int !num_of_branches));
    String.println out ("Trivial Prune     #: " ^ (string_of_int !num_of_trivial_pruning));
    String.println out ("non-trivial Prune #: " ^ (string_of_int !num_of_non_trivial_pruning));
  end

let extract_env p = match p with
  | Hole -> raise (Error "nothing to return!")
  | NAxiom nenv -> nenv
  | NBranch (nenv, _, _) -> nenv
  | NPrune (nenv1, nenv2, _) -> nenv1

let rec check (pt : t) (fl : formula list) =
  match pt with
  | Hole -> ()
  | NAxiom e ->
     let coq_nprint_goal e f =
       String.print stdout "\nGoal\n";
       Env.coq_nprint stdout e;
       Basic.coq_formula f in
     Env.coq_nprint_def stdout e;
     List.print ~first:"" ~last:".\n" ~sep:".\n"
		(coq_nprint_goal e) 
		stdout
		fl;
     incr num_of_axioms
  | NBranch (nenv, pt1, pt2) ->
    let env1 = extract_env pt1 in
    let env2 = extract_env pt2 in
    let env_join = Env.njoin env1 env2 in
    begin
      match Env.norder nenv env_join with
      | true -> (incr num_of_branches; check pt1 fl; check pt2 fl)
      | false ->
        begin
          String.println IO.stdout "\nEnv1: ";
          Env.nprint IO.stdout env1;
          String.println IO.stdout "\nEnv2: ";
          Env.nprint IO.stdout env2;
          String.println IO.stdout "\nEnvJoin: ";
          Env.nprint IO.stdout env_join;
          String.println IO.stdout "Env: ";
          Env.nprint IO.stdout nenv;
          String.println IO.stdout "\nEnv is not a subset of EnvJoin(Env1 + Env2).";
          raise (Error "Branch")
        end
    end
  | NPrune (nenv1, nenv2, pt') ->
     if not (Env.norder nenv2 nenv1) then
       begin
         String.println IO.stdout "\nEnv1: ";
         Env.nprint IO.stdout nenv1;
         String.println IO.stdout "\nEnv2: ";
         Env.nprint IO.stdout nenv2;
         String.println IO.stdout "\nEnv2 is not a subset of Env1.";
         raise (Error "Prune")
       end
     else if Env.nequals nenv2 nenv1 then
       (incr num_of_trivial_pruning;
	check pt' fl)
     else
       let remainders = Env.nminus nenv1 nenv2 in
       begin
         incr num_of_non_trivial_pruning;
         List.iter (fun nenv_ -> check (NAxiom nenv_) fl) remainders;
         check pt' fl
       end
