altura(nil, 0).
altura(tree(_, Izquierda, Derecha), Altura) :-
    altura(Izquierda, AlturaIzquierda),
    altura(Derecha, AlturaDerecha),
    Altura is 1 + max(AlturaIzquierda, AlturaDerecha).