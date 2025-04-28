% append/3: concatena dos listas
append([], L, L).
append([H | T], L, [H | V]) :-
    append(T, L, V).

% intercambio/3: detecta y realiza un intercambio si hace falta
intercambio([X, Y | Resto], [Y, X | Resto]) :-
    X @> Y.

intercambio([Z | Resto], [Z | RestoOrdenado]) :-
    intercambio(Resto, RestoOrdenado).

% burbuja/2: aplica un solo barrido de burbuja
burbuja(L, L) :- 
    \+ intercambio(L, _), !.

burbuja(L, LOrdenada) :-
    intercambio(L, L1),
    burbuja(L1, LOrdenada).

% busort/2: aplica burbuja recursivamente hasta que no haya más cambios
busort(L, LOrdenada) :-
    burbuja(L, LOrdenada).
