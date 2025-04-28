eliminar(E, nil, nil).
eliminar(E, tree(E, nil, nil), nil). % Eliminar hoja
eliminar(E, tree(E, nil, Derecha), Derecha). % Eliminar nodo con solo hijo derecho
eliminar(E, tree(E, Izquierda, nil), Izquierda). % Eliminar nodo con solo hijo izquierdo
eliminar(E, tree(E, Izquierda, Derecha), tree(Sucesor, NuevaIzquierda, Derecha)) :-
    minimo(Derecha, Sucesor),
    eliminar(Sucesor, Izquierda, NuevaIzquierda).
eliminar(E, tree(Raiz, Izquierda, Derecha), tree(Raiz, NuevaIzquierda, Derecha)) :-
    E < Raiz,
    eliminar(E, Izquierda, NuevaIzquierda).
eliminar(E, tree(Raiz, Izquierda, Derecha), tree(Raiz, Izquierda, NuevaDerecha)) :-
    E > Raiz,
    eliminar(E, Derecha, NuevaDerecha).

minimo(tree(Raiz, nil, _), Raiz).
minimo(tree(_, Izquierda, _), Minimo) :-
    minimo(Izquierda, Minimo).
