% Consultas sobre unificación en Prolog

% a) ¿Son iguales 2 y 2?
?- 2 = 2.

% b) ¿Es 2 igual a la expresión 1+1?
?- 2 = 1+1.

% c) ¿Son estructuralmente iguales 1+1 y 0+2?
?- 1+1 = 0+2.

% d) ¿Puede X tomar el valor de la expresión 5*8?
?- X = 5*8.

% e) ¿Puede X*1 unificarse con 2*1?
?- X*1 = 2*1.

% f) ¿Puede X-3 unificarse con 5-Y?
?- X-3 = 5-Y.

% g) ¿Puede X-3 unificarse con 5-X?
?- X-3 = 5-X.

% h) ¿Puede 2*(8-3) unificarse con 2*X?
?- 2*(8-3) = 2*X.
