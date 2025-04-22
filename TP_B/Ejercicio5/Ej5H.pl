:- consult('Ej5E.pl').

es_palindromo(Lista) :-
    rev2(Lista, ListaInvertida),
    Lista = ListaInvertida.