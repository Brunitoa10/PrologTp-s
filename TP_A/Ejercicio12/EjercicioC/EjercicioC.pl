:- consult('../base_datos.pl').

% c) ¿Qué personas nacieron después de 1950?
nacieron_despues_1950(Persona) :-                                                                                                                   
    persona(Persona, fecha_nac(_, _, Anio), _),
    Anio > 1950.

