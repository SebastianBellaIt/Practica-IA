
inicio:- consult('familiasimpson.txt'), persona('homero').
persona(X):- padres(Y,X,_), writeln(Y), fail.
persona(_).