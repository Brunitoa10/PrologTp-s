
suma_incrementos(0, B, B).
suma_incrementos(s(A), B, Resultado) :-
    suma_incrementos(A, B, ResultadoIntermedio),
    Resultado = s(ResultadoIntermedio).