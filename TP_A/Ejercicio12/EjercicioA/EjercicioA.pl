:- consult('../base_datos.pl').

% a) ¿Quiénes tienen tipo de sangre AB+?
sangre_ab_plus(Persona) :- 
    persona(Persona, _, tipo_sangre(ab, '+')).

