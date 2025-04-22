:- consult('Ej2.pl').

multiplica_sumas(_, 0, 0).
multiplica_sumas(A, s(B), Resultado) :-
    multiplica_sumas(A, B, ResultadoParcial),
    suma_incrementos(A, ResultadoParcial, Resultado).