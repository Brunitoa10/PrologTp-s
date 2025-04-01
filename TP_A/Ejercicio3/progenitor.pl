% Base de conocimientos
progenitor(abel, cesar).
progenitor(abel, dario).
progenitor(flavia, cesar).
progenitor(flavia, dario).
progenitor(dario, hector).
progenitor(luisa, hector).
progenitor(dario, ines).
progenitor(luisa, ines).
progenitor(omar, maria).
progenitor(sara, maria).
progenitor(omar, victor).
progenitor(sara, victor).

% Consultas y sus respuestas esperadas

% a) ¿Es omar progenitor de maria?
% ?- progenitor(omar, maria).
% true.

% b) ¿Es dario progenitor de ines?
% ?- progenitor(dario, ines).
% true.

% c) ¿Es omar progenitor de ines?
% ?- progenitor(omar, ines).
% false.

% d) ¿Es omar progenitor de maria Y dario progenitor de ines?
% ?- progenitor(omar, maria), progenitor(dario, ines).
% true.

% e) ¿Quiénes son hijos de sara?
% ?- progenitor(sara, X).
% X = maria ;
% X = victor.

% f) ¿Quién es progenitor de cesar?
% ?- progenitor(X, cesar).
% X = abel ;
% X = flavia.

% g) ¿Quién es progenitor de hector y también hijo de abel?
% ?- progenitor(X, hector), progenitor(abel, X).
% X = dario.

% h) ¿Quién es progenitor de cesar y quién es progenitor de ese progenitor?
% ?- progenitor(X, cesar), progenitor(Y, X).
% X = abel, Y = _ ;
% X = flavia, Y = _.

% i) ¿Cuáles son todas las relaciones de progenitor-hijo?
% ?- progenitor(X,Y).
% Lista de todas las relaciones registradas en la base de conocimientos.
