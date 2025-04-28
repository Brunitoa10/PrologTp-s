% quick_sort/2: Ordena una lista.
quick_sort([], []).
quick_sort([Pivot|Resto], Ordenada) :-
    particionar(Pivot, Resto, Menores, Mayores),
    quick_sort(Menores, MenoresOrdenados),
    quick_sort(Mayores, MayoresOrdenados),
    append(MenoresOrdenados, [Pivot|MayoresOrdenados], Ordenada).

% particionar/4: Divide la lista en elementos menores y mayores que el pivote.
particionar(_, [], [], []).
particionar(Pivot, [X|Resto], [X|Menores], Mayores) :-
    X =< Pivot,
    particionar(Pivot, Resto, Menores, Mayores).
particionar(Pivot, [X|Resto], Menores, [X|Mayores]) :-
    X > Pivot,
    particionar(Pivot, Resto, Menores, Mayores).