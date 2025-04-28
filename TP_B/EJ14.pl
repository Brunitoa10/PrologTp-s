rotar_derecha(L, N, R) :-
    length(L, Length),
    % Calculamos el número efectivo de rotaciones considerando el tamaño de la lista
    EffectiveN is N mod Length,
    (
        EffectiveN == 0 ->
        % Si el número efectivo de rotaciones es 0, la lista no cambia
        R = L
    ;
        % Dividimos la lista en la parte que se mueve al principio y la parte restante
        Pos is Length - EffectiveN,
        split_at(L, Pos, Front, Back),
        % Concatenamos la parte final al principio para obtener la lista rotada
        append(Back, Front, R)
    ).

% Predicado auxiliar para dividir una lista en una posición dada
split_at(List, N, Front, Back) :-
    length(Front, N),
    append(Front, Back, List).

%--------------
rotar_izquierda(L, N, R) :-
    length(L, Length),
    % Calculamos el número efectivo de rotaciones considerando el tamaño de la lista
    EffectiveN is N mod Length,
    (
        EffectiveN == 0 ->
        % Si el número efectivo de rotaciones es 0, la lista no cambia
        R = L
    ;
        % Dividimos la lista en la parte que se mueve al final y la parte restante
        split_at(L, EffectiveN, Front, Back),
        % Concatenamos la parte final después de la parte inicial para obtener la lista rotada
        append(Back, Front, R) % Originalmente era append(Back, Front, R), corregido a append(Back, Front, R)
    ).

% Predicado auxiliar para dividir una lista en una posición dada (el mismo que antes)
split_at(List, N, Front, Back) :-
    length(Front, N),
    append(Front, Back, List).