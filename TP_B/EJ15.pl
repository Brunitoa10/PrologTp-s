% prefijo(Xs, Ys) % true cuando Xs es prefijo de Ys
prefijo([], Ys).
prefijo([X|Xs], [X|Ys]) :- prefijo(Xs, Ys).
