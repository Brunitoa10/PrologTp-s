%Borra solo una aparicion del elemento en la lista
efface(A, [A|L], L) :- !.
efface(A, [B|L], [B|M]) :- efface(A, L, M).

%Borra todas las apariciones del elemento en la lista
effaceAll(_, [], []).
effaceAll(A, [A|L], M) :- effaceAll(A, L, M), !.
effaceAll(A, [B|L], [B|M]) :- effaceAll(A, L, M).