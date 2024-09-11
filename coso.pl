personas(123, pepito).

mostrar(Codigo) :-
    personas(Codigo, Nombre),
    write(Nombre);
    true.
