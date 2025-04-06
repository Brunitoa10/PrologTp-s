:- dynamic e/0, f/0, g/0.  % Declarar predicados dinámicos

a :- b, c.    % Regla 1: a es verdadero si b y c son verdaderos
b :- d, e.    % Regla 2: b es verdadero si d y e son verdaderos
c :- f, g.    % Regla 3: c es verdadero si f y g son verdaderos
d :- c, g.    % Regla 4: d es verdadero si c y g son verdaderos

% Hechos conocidos
e.  % e es verdadero
f.  % f es verdadero
g :- e, f.  % g es verdadero si e y f son verdaderos

%SALIDA A-> TRUE.