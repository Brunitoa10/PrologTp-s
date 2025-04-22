rotar_izquierda([], []).
rotar_izquierda([Cabeza | Cola], Rotada) :-
    append(Cola, [Cabeza], Rotada).