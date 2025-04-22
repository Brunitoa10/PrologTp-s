rev2(L1, L2) :- revzap(L1, [], L2).

revzap([X|L], L2, L3) :-
    revzap(L, [X|L2], L3).

revzap([], L, L).