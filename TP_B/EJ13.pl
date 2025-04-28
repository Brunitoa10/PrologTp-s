% Predicado s(W) que es verdadero si la lista W pertenece a L(S)
s(W) :-
    append([a], Rest1, W),
    append(Rest2, [c], Rest1),
    s(Rest2).
s(W) :-
    t(W).

% Predicado t(W) que es verdadero si la lista W pertenece a L(T)
t(W) :-
    append([b], Rest1, W),
    append(Rest2, [c], Rest1),
    t(Rest2).
t([b, c]).