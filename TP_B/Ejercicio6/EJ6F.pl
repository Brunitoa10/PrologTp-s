% diferencia_conjuntos(+ConjuntoA, +ConjuntoB, -Diferencia)
% es verdadero si Diferencia contiene los elementos de ConjuntoA que no están en ConjuntoB.
diferencia_conjuntos([], _, []).
diferencia_conjuntos([Elemento | RestoA], ConjuntoB, Diferencia) :-
    member(Elemento, ConjuntoB),
    !,
    diferencia_conjuntos(RestoA, ConjuntoB, Diferencia).
diferencia_conjuntos([Elemento | RestoA], ConjuntoB, [Elemento | RestoD]) :-
    diferencia_conjuntos(RestoA, ConjuntoB, RestoD).

% member(Elem, Lista) es verdadero si Elem es un elemento de Lista.
member(X, [X|_]).
member(X, [_|Ys]) :-
    member(X, Ys).
