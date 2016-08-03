all: frontend.native

frontend.native: frontend.ml sat/sat_solver__Sat.ml
	ocamlbuild frontend.native -use-ocamlfind

sat/sat_solver__Sat.ml: sat_solver.mlw model.mlw impl_list.mlw
	mkdir -p sat
	why3 extract -L . sat_solver.mlw -o sat -D ocaml-gen

clean:
	rm -rf sat
	rm -rf _build
	rm frontend.native
