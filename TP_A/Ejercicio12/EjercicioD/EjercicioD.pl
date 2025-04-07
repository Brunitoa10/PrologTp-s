:- consult('../base_datos.pl').

% d) ¿Qué personas nacieron antes que John McCarthy?
fecha_anterior(fecha_nac(D1, M1, A1), fecha_nac(D2, M2, A2)) :-
    A1 < A2 ;
    (A1 = A2, M1 < M2) ;
    (A1 = A2, M1 = M2, D1 < D2).

nacieron_antes_john_mccarthy(Persona) :-
    persona(john_mccarthy, FechaJohn, _),
    persona(Persona, FechaOtra, _),
    Persona \= john_mccarthy,
    fecha_anterior(FechaOtra, FechaJohn).

