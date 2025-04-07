:- consult('../base_datos.pl').

% e) ¿Puede P1 donar sangre a P2?
compatible(o, _, _).
compatible(a, a, _).
compatible(a, ab, _).
compatible(b, b, _).
compatible(b, ab, _).
compatible(ab, ab, _).

compatible_rh('-', _).
compatible_rh('+', '+').

puede_donar(P1, P2) :-
    persona(P1, _, tipo_sangre(T1, Rh1)),
    persona(P2, _, tipo_sangre(T2, Rh2)),
    compatible(T1, T2, _),
    compatible_rh(Rh1, Rh2),
    P1 \= P2.
