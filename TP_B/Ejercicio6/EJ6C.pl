% agregar_elemento(+Elemento, +Conjunto, -NuevoConjunto)
% es verdadero si NuevoConjunto es el resultado de agregar Elemento a Conjunto
% (si Elemento no estaba ya presente).
agregar_elemento(Elemento, Conjunto, Conjunto) :-
    member(Elemento, Conjunto),
    !.
agregar_elemento(Elemento, Conjunto, [Elemento | Conjunto]).

% member(Elem, Lista) es verdadero si Elem es un elemento de Lista.
member(X, [X|_]).
member(X, [_|Ys]) :-
    member(X, Ys).