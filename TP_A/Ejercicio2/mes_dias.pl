% Hechos: Cantidad de días en meses comunes
mes_dias(enero, 31).
mes_dias(febrero, 28). % Se ajusta en caso de año bisiesto
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

% Regla para determinar si un año es bisiesto
bisiesto(Anio) :-
    Anio mod 4 =:= 0,
    (Anio mod 100 =\= 0; Anio mod 400 =:= 0).

% Regla para obtener la cantidad de días de un mes en un año específico
mes_dias_anio(febrero, Anio, 29) :- bisiesto(Anio), !. 
mes_dias_anio(febrero, _, 28) :- !.
mes_dias_anio(Mes, _, Dias) :- mes_dias(Mes, Dias).

% Consultas de ejemplo:
% ?- mes_dias_anio(febrero, 2024, D). % Debería retornar D = 29
% ?- mes_dias_anio(marzo, 2023, D).   % Debería retornar D = 31

%OBSERVACION
    % ! es un corte a la recursion
