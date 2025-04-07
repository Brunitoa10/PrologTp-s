:- consult('../base_datos.pl').

% b) ¿Quiénes nacieron en el mismo mes que David Hilbert?
mismo_mes_david_hilbert(Nombre) :-
    persona(david_hilbert, fecha_nac(_, Mes, _), _),
    persona(Nombre, fecha_nac(_, Mes, _), _),
    Nombre \= david_hilbert.

