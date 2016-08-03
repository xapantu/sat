A proven SAT solver
===================

A toy DPLL based SAT solver.

Written in WhyML and proven with [Why3](http://why3.lri.fr).


Build
-----

Install why3:

```
opam install why3
```


Build:

```
make
```


Prove
-----

To check the DPLL algorithm itself (launch with another file to check the other part).

```
why3 ide -L . sat_solver.mlw
```

It probably needs Z3, CVC4 and Alt-Ergo to be checked.
