insertar(E, nil, tree(E, nil, nil)).
insertar(E, tree(Raiz, Izquierda, Derecha), tree(Raiz, NuevaIzquierda, Derecha)) :-
    E < Raiz,
    insertar(E, Izquierda, NuevaIzquierda).
insertar(E, tree(Raiz, Izquierda, Derecha), tree(Raiz, Izquierda, NuevaDerecha)) :-
    E > Raiz,
    insertar(E, Derecha, NuevaDerecha).
insertar(E, tree(E, Izquierda, Derecha), tree(E, Izquierda, Derecha)). % El elemento ya existe