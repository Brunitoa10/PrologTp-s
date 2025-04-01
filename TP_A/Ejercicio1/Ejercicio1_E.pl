:- dynamic b/0, c/0, d/0.  % Declarar predicados dinámicos

a :- b, c, d.  % Regla 1: a es verdadero si b, c y d son verdaderos
b :- c, d.     % Regla 2: b es verdadero si c y d son verdaderos
c :- d.        % Regla 3: c es verdadero si d es verdadero

% Hecho conocido
d.  % d es verdadero

%SALIDA -> TRUE