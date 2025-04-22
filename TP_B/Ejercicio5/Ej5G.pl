%Cambia solo una aparacion del elemento en la lista

substituye_primero(Viejo, Nuevo, [Viejo|Resto], [Nuevo|Resto]) :- !.
substituye_primero(Viejo, Nuevo, [Cabeza|Resto], [Cabeza|RestoSustituido]) :-
    substituye_primero(Viejo, Nuevo, Resto, RestoSustituido).
substituye_primero(_, _, [], []). % Para el caso en que el elemento no se encuentra

%Cambiando todas las apariciones de ese elemento

substituye_todos(X, [], _, []).
substituye_todos(X, [X|L], A, [A|M]) :- !, substituye_todos(X, L, A, M).
substituye_todos(X, [Y|L], A, [Y|M]) :- substituye_todos(X, L, A, M).