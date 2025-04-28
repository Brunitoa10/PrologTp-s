:- consult('Ej3.pl').

potencia(Base, s(0), Base).
potencia(Base, s(Exponente), Resultado) :-
    potencia(Base, Exponente, ResultadoParcial),
    multiplica_sumas(Base, ResultadoParcial, Resultado).