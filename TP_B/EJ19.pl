aplanar([], []).
aplanar([Cabeza | Cola], Aplanada) :-
    is_list(Cabeza),
    aplanar(Cabeza, CabezaAplanada),
    aplanar(Cola, ColaAplanada),
    append(CabezaAplanada, ColaAplanada, Aplanada).
aplanar([Cabeza | Cola], [Cabeza | ColaAplanada]) :-
    \+ is_list(Cabeza),
    aplanar(Cola, ColaAplanada).