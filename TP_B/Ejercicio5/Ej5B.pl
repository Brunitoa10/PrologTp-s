
insertar_al_principio(Elemento, Lista, [Elemento | Lista]).

insertar_al_final_con_append(Elemento, Lista, Resultado) :-
    append(Lista, [Elemento], Resultado).