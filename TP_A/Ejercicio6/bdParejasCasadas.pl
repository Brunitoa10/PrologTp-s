% Hechos de progenitores
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

% Hechos de parejas casadas
parejaCasada(abel, flavia).
parejaCasada(dario, luisa).
parejaCasada(omar, sara).
parejaCasada(hector, maria).

% Relación simétrica de pareja casada (casados/2)
casados(X, Y) :- parejaCasada(X, Y).
casados(X, Y) :- parejaCasada(Y, X).

% Relación suegra(X, Y) - Determina si X es suegra de Y
% Para que X sea suegra de Y, X debe ser la madre de uno de los progenitores de Y
suegra(X, Y) :-
    progenitor(Z, Y), casados(X, Z), esMujer(X).

% Relación suegro(X, Y) - Determina si X es suegro de Y
% Para que X sea suegro de Y, X debe ser el padre de uno de los progenitores de Y
suegro(X, Y) :-
    progenitor(Z, Y), casados(X, Z), esHombre(X).

% Relación padresPoliticosDe(X, Y, Z) - Determina si X e Y son los padres políticos de Z
padresPoliticosDe(X, Y, Z) :-
    progenitor(Z, W), casados(X, W), casados(Y, W).

% Relación nuera(X, Y) - Determina si X es nuera de Y
% Una nuera es la esposa de uno de los hijos de Y
nuera(X, Y) :-
    progenitor(Y, Z), casados(X, Z), esMujer(X).

% Relación yerno(X, Y) - Determina si X es yerno de Y
% Un yerno es el esposo de una de las hijas de Y
yerno(X, Y) :-
    progenitor(Y, Z), casados(X, Z), esHombre(X).

% Relación cuñado(X, Y) - Determina si X es el cuñado de Y
% X es cuñado de Y si el hermano de X está casado con la hermana de Y
cunado(X, Y) :-
    progenitor(Z, X), progenitor(W, Y), casados(Z, W), X \= Y.

% Relación cuñada(X, Y) - Determina si X es la cuñada de Y
% X es cuñada de Y si el hermano de X está casado con el hermano de Y
cunada(X, Y) :-
    progenitor(Z, X), progenitor(W, Y), casados(Z, W), X \= Y.

% Relación hermanosPoliticos(X, Y) - Determina si X e Y son hermanos políticos
% Si los padres de X están casados con los padres de Y, entonces son hermanos políticos
hermanosPoliticos(X, Y) :-
    progenitor(Z, X), progenitor(W, Y), casados(Z, W), casados(Z, W), X \= Y.

% Relación concuñados(X, Y) - Determina si X e Y son concuñados
% Los concuñados son los esposos de los hermanos de cada uno
concunados(X, Y) :-
    progenitor(Z, X), progenitor(W, Y), casados(Z, W), casados(Z, W), X \= Y.

% Auxiliar para saber si es hombre o mujer
esMujer(X) :- progenitor(X, _), parejaCasada(X, _).
esHombre(X) :- progenitor(X, _), parejaCasada(X, _).
