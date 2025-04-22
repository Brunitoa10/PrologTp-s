:- consult('Ej5E.pl').

generar_palindromo_doble(Lista, PalindromoDoble) :-
    rev2(Lista, ListaInvertida),
    append(Lista, ListaInvertida, PalindromoDoble).