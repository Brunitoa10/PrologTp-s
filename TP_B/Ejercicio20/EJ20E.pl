balanceado(nil).
balanceado(tree(_, Izquierda, Derecha)) :-
    altura(Izquierda, AlturaIzquierda),
    altura(Derecha, AlturaDerecha),
    abs(AlturaIzquierda - AlturaDerecha) =< 1,
    balanceado(Izquierda),
    balanceado(Derecha).

altura(nil, 0).
altura(tree(_, Izquierda, Derecha), Altura) :-
    altura(Izquierda, AlturaIzquierda),
    altura(Derecha, AlturaDerecha),
    MaxAltura is max(AlturaIzquierda, AlturaDerecha),
    Altura is MaxAltura + 1.
