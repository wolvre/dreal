OCAMLOPT=ocamlopt
#OCAMLOPT=ocamlc -g

all: error.cmx intv.cmx basic.cmx env.cmx ptree.cmx parser.cmx lexer.cmx main.cmx 
	ocamlfind ${OCAMLOPT} -linkpkg -package batteries \
	-annot \
	error.cmx intv.cmx env.cmx basic.cmx ptree.cmx parser.cmx lexer.cmx main.cmx \
	-o main.native

error.cmx: error.ml
	ocamlfind ${OCAMLOPT} -annot -c error.ml

intv.cmx: intv.ml 
	ocamlfind ${OCAMLOPT} -annot -package batteries -c intv.ml

basic.cmx: basic.ml
	ocamlfind ${OCAMLOPT} -annot -package batteries -c basic.ml

env.cmx: intv.cmx env.ml 
	ocamlfind ${OCAMLOPT} -annot -package batteries -c env.ml

ptree.cmx: intv.cmx env.cmx basic.cmx ptree.ml 
	ocamlfind ${OCAMLOPT} -annot -package batteries -c ptree.ml

main.cmx: ptree.cmx env.cmx main.ml parser.cmx lexer.cmx
	ocamlfind ${OCAMLOPT} -annot -package batteries -c main.ml

lexer.ml: lexer.mll parser.ml
	ocamllex -q lexer.mll

lexer.cmx: lexer.ml
	ocamlfind ${OCAMLOPT} -c -package batteries -package threads -thread -o lexer.cmx lexer.ml

parser.ml: parser.mly ptree.ml basic.ml env.ml
	ocamlyacc -v parser.mly

parser.cmi: parser.mli
	ocamlfind ocamlc -c -dtypes -package batteries -package threads -thread -o parser.cmi parser.mli

parser.cmx: parser.ml parser.cmi
	ocamlfind ${OCAMLOPT} -c -package batteries -package threads -thread -o parser.cmx parser.ml

clean:
	-rm -f lexer.ml parser.ml parser.output
	-rm -f parser.mli
	-rm -f *.cmi *.cmx *.o *.annot
	-rm -f main.native
