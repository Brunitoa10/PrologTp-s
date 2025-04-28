% Append
append([], L, L).
append([H | T], L, [H | V]) :-
    append(T, L, V).

% Detecta si están mal ordenados
order(B, A) :-
    B > A.

% Bubble sort
busort(L, S) :-
    order(B, A), !,
    append(Afuera, [B, A | Resto], L),
    append(Afuera, [A, B | Resto], M),
    busort(M, S).
busort(L, L).
