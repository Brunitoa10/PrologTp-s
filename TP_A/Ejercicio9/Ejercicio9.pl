% i) ?- 7 is 4+3.
% Válida: Se evalúa 4+3 y se compara con 7 -> Es cierto
?- 7 is 4+3.
true.

% ii) ?- 10-3 is 9-2.
% Inválida: "10-3" no se evalúa antes de la comparación con is
?- 10-3 is 9-2.
false. % Error porque "10-3" es una estructura y no una expresión evaluable

% iii) ?- X is 5*6.
% Válida: Se evalúa 5*6 y se unifica con X
?- X is 5*6.
X = 30.

% iv) ?- 5*6 is X.
% Inválida: El lado izquierdo (5*6) no se evalúa automáticamente antes de la comparación
?- 5*6 is X.
false.

% v) ?- X is ‘hola’.
% Inválida: 'hola' no es una expresión aritmética evaluable
?- X is 'hola'.
false. % Error de tipo

% vi) ?- X = 2 + 2, 4 is X.
% Inválida: X = 2+2 solo unifica X con la estructura "2+2", no lo evalúa
?- X = 2 + 2, 4 is X.
false. % Error porque X es una estructura, no un número evaluado

% vii) ?- 10-3 =:= 9-2.
% Válida: Ambos lados se evalúan antes de compararse
?- 10-3 =:= 9-2.
true.

% viii) ?- X = 3+2, 5 < X.
% Inválida: X no se evalúa automáticamente y sigue siendo la estructura "3+2"
?- X = 3+2, 5 < X.
false.

% ix) ?- X = 2*3, Y >= X, Y = 7-2.
% Inválida: X sigue siendo una estructura no evaluada
?- X = 2*3, Y >=X, Y = 7-2.
false.

% x) ?- 10-3 =\= 7.
% Válida: Se evalúan ambos lados
