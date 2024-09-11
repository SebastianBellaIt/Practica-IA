inicio:- consult('personas.txt'), mostrar(123).
mostrar(Cod):- personas(Cod, Nombre),
    writeln(Nombre).
mostrar(Cod):-
    writeln('Ingrese el nombre: '),
    read(Nombre),
    assert(personas(Cod,Nombre)).