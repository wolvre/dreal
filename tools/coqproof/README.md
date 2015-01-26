Proof Checker
============

Required Packages
-----------------
 - GNU Parallel: http://www.gnu.org/software/parallel/
 - ocamlbrew: https://github.com/hcarty/ocamlbrew
   We find ``ocamlbrew`` is the easiest way to set up the compilation environment for the proof checker written in Ocaml.
   As long as your system has ``ocamlfind`` and ``batteries-included``, it should be fine to compile it.
 - Coq and Coq.Interval are required for running the generated Coq scripts. A simple way to install Coq and its libraries is to follow the instructions at https://github.com/coq/repo-stable.

Compile ProofChecker (written in OCaml)
---------------------------------------
    $ cd checker
    $ make

Usage
-----
    $ ./main.native XXX.smt2.proof > YYY.v	
    $ coqide YYY.v &
