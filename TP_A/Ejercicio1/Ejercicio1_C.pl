:- dynamic d/0, f/0.  % Declarar predicados dinámicos

a :- b, c.   % Regla 1: a es verdadero si b y c son verdaderos
a :- b, e.   % Regla 2: a es verdadero si b y e son verdaderos
b :- d.      % b es verdadero si d es verdadero
c :- e, f.   % c es verdadero si e y f son verdaderos

% Hechos conocidos
d.  % d es verdadero
e.  % e es verdadero

%SALIDA A-> TRUE
%SALIDA B-> TRUE
%SALIDA C-> FALSE
%SALIDA D-> TRUE
%SALIDA E-> TRUE