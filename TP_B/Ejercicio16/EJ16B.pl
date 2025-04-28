% select_sort/2: Ordena una lista.
select_sort([], []).
select_sort(Lista, [Minimo|RestoOrdenado]) :-
    seleccionar_minimo(Lista, Minimo, Resto),
    select_sort(Resto, RestoOrdenado).

% seleccionar_minimo/3: Encuentra el elemento mínimo en una lista y devuelve el resto.
seleccionar_minimo([X], X, []).
seleccionar_minimo([X|Resto], Minimo, [X|RestoSinMinimo]) :-
    seleccionar_minimo(Resto, MinResto, RestoSinMinimoAux),
    (   X =< MinResto ->
        Minimo = X,
        RestoSinMinimo = RestoSinMinimoAux
    ;   Minimo = MinResto,
        RestoSinMinimo = [X|RestoSinMinimoAux]
    ).