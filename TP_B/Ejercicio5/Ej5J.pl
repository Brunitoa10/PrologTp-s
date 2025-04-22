rotar_derecha(Lista, Rotada) :-
    append(Resto, [Ultimo], Lista),
    Rotada = [Ultimo | Resto].