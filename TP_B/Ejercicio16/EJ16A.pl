% insort/2: Ordena una lista.
insert_sort(Lista, Ordenada) :-
    insort(Lista, [], Ordenada).

% insort/3: Realiza la inserción recursivamente.
insort([], Acumulador, Acumulador).
insort([X|Resto], Acumulador, Ordenada) :-
    insertar(X, Acumulador, NuevoAcumulador),
    insort(Resto, NuevoAcumulador, Ordenada).

% insertar/3: Inserta un elemento X en la lista Ordenada manteniendo el orden.
insertar(X, [], [X]).
insertar(X, [Y|Resto], [X, Y|Resto]) :-
    X =< Y, !.
insertar(X, [Y|Resto], [Y|NuevoResto]) :-
    insertar(X, Resto, NuevoResto).