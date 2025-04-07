% Regla para determinar si un año es bisiesto
bisiesto(X) :-
    X mod 4 =:= 0,
    (X mod 100 =\= 0; X mod 400 =:= 0).

% Hechos base (días comunes)
mes_dias(enero, 31).
mes_dias(febrero, 28).
mes_dias(marzo, 31).
mes_dias(abril, 30).
mes_dias(mayo, 31).
mes_dias(junio, 30).
mes_dias(julio, 31).
mes_dias(agosto, 31).
mes_dias(septiembre, 30).
mes_dias(octubre, 31).
mes_dias(noviembre, 30).
mes_dias(diciembre, 31).

% Regla para días según el año (usando X e Y)
mes_dias_anio(febrero, X, 29) :-
    bisiesto(X).
mes_dias_anio(febrero, X, 28) :-
    \+ bisiesto(X).
mes_dias_anio(M, _, Y) :-
    M \= febrero,
    mes_dias(M, Y).


% Consultas de ejemplo:
% ?- mes_dias_anio(febrero, 2024, D). % Debería retornar D = 29
% ?- mes_dias_anio(marzo, 2023, D).   % Debería retornar D = 31

%OBSERVACION
    % ! “Si llegaste hasta acá y esta regla se cumplió, no sigas probando otras alternativas”.
