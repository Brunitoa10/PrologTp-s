remdup(L, M) :-
    dupacc(L, [], M).

dupacc([], A, A).
dupacc([H|T], A, L) :-
    member(H, A),
    dupacc(T, A, L).
dupacc([H|T], A, L) :-
    dupacc(T, [H|A], L).