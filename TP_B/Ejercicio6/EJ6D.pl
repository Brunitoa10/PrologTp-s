union([], X, X).
union([X|R], Y, Z) :-
    member(X, Y),
    !,
    union(R, Y, Z).
union([X|R], Y, [X|Z]) :-
    union(R, Y, Z).