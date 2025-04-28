plato(entrada, ensalada, 5).
plato(entrada, sopa, 7).
plato(minuta, milanesa, 12).
plato(minuta, pasta, 10).
plato(postre, flan, 4).
plato(postre, helado, 6).

menu_economico(N, [EntradaNombre, MinutaNombre, PostreNombre]) :-
    plato(entrada, EntradaNombre, EntradaPrecio),
    plato(minuta, MinutaNombre, MinutaPrecio),
    plato(postre, PostreNombre, PostrePrecio),
    CostoTotal is EntradaPrecio + MinutaPrecio + PostrePrecio,
    CostoTotal < N.