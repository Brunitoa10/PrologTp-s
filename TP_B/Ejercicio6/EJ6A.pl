% es_conjunto(Lista) es verdadero si Lista no contiene elementos repetidos.
es_conjunto([]).
es_conjunto([X|Xs]) :-
    \+ member(X, Xs),
    es_conjunto(Xs).

% member(Elem, Lista) es verdadero si Elem es un elemento de Lista.
member(X, [X|_]).
member(X, [_|Ys]) :-
    member(X, Ys).