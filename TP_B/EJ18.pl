% Declaramos algunos hechos
sobre(a, b).
sobre(b, c).

% Definimos encima/2
encima(Bloque1, Bloque2) :-
    sobre(Bloque1, Bloque2).

encima(Bloque1, Bloque2) :-
    sobre(Bloque1, BloqueIntermedio),
    encima(BloqueIntermedio, Bloque2).
