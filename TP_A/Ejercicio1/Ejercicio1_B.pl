:- dynamic b/0, c/0, d/0, e/0, f/0.  % Declarar predicados dinámicos

a :- b, c.   % a es verdadero si b y c son verdaderos
b :- d.      % b es verdadero si d es verdadero
c :- e, f.   % c es verdadero si e y f son verdaderos

% Hechos conocidos
e.  % e es verdadero
f.  % f es verdadero


%Salida -> FALSE.