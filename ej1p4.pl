inicio:- consult('cuentas.txt'), read(X),menu(X).
menu(1):-readdata.

menu(2):- write('Persona'), write('    |  Servicio'), write(' |    importe '), writeln(' '),
gasto(P,S,I), write(P),write('  |    '), write(S), write('  |   '),write(I), writeln(' '), fail.
menu(2).

readdata:-  
    writeln('ingrese el nombre de la persona: '), read(P), 
    writeln('ingrese el nombre del servicio: '), read(S), 
    writeln('ingrese cuanto gasto'), read(I), 
    assert(gasto(P,S,I)), writeln('desea cargar una persona más? y/n'), read(J), readdata(J).
    
readdata(J):- J = 'n', loaddata.
loaddata:- tell('cuentas.txt'), listing(gasto), told.