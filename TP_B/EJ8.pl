tipo_de_argumento(Arg, variable) :-
    var(Arg),
    !.
tipo_de_argumento(Arg, atomo) :-
    atom(Arg),
    !.
tipo_de_argumento(Arg, entero) :-
    integer(Arg),
    !.
tipo_de_argumento(Arg, lista) :-
    is_list(Arg),
    !.
tipo_de_argumento(_, desconocido).
