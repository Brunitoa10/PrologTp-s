% Base de conocimiento de progenitores
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

% a) padresDe(X, Y, Z): Determina si X e Y son los padres de Z
padresDe(X, Y, Z) :- progenitor(X, Z), progenitor(Y, Z).

% b) tuvoHijos(X): Determina si X tuvo algún hijo
tuvoHijos(X) :- progenitor(X, _).

% c) esMadre(X): Determina si X ha sido madre
% Para ser madre, debe haber tenido al menos un hijo
esMadre(X) :- progenitor(X, Z), esMujer(X), progenitor(Y, Z), X \= Y.

% Definir que X es mujer si es una madre, es decir, si ha sido progenitora
esMujer(X) :- progenitor(X, _).

% d) hermanos(X, Y): Determina si X e Y son hermanos
hermanos(X, Y) :-
    progenitor(P, X), progenitor(P, Y),
    X \= Y.

% e) tio(X, Y): Determina si X es uno de los tios de Y
tio(X, Y) :-
    progenitor(P, Y), hermanos(X, P).

% f) abuelo(X, Y): Determina si X es uno de los abuelos de Y
abuelo(X, Y) :-
    progenitor(X, P), progenitor(P, Y).

% g) tioAbuelo(X, Y): Determina si X es uno de los tios abuelos de Y
tioAbuelo(X, Y) :-
    progenitor(P, Y), hermanos(X, P), progenitor(Q, P), P \= Q.

% Particularidad de tioAbuelo:
% La relación tioAbuelo incluye una doble vinculación de parentesco (hermano de un progenitor y progenitor de otro).
% A diferencia de los tíos tradicionales, los tíos abuelos son hermanos de los abuelos.

% h) ancestro(X, Y): Determina si X es un ancestro de Y
ancestro(X, Y) :-
    progenitor(X, Y).
ancestro(X, Y) :-
    progenitor(Z, Y), ancestro(X, Z).
