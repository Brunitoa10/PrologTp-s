
arco(VerticeInicial, VerticeFinal, Distancia).

%Programa Prolog para Calcular la Distancia (Sin Control de Ciclos):

distancia_sin_ciclos(Inicio, Fin, Distancia) :-
    camino_sin_ciclos(Inicio, Fin, Distancia, []).

camino_sin_ciclos(Actual, Fin, 0, _) :-
    Actual == Fin, !.
camino_sin_ciclos(Actual, Fin, Distancia, Visitados) :-
    arco(Actual, Siguiente, D),
    \+ member(Siguiente, Visitados),
    camino_sin_ciclos(Siguiente, Fin, DistanciaRestante, [Actual|Visitados]),
    Distancia is D + DistanciaRestante.

%Programa Prolog para Calcular la Distancia (Con Control de Ciclos):

    distancia_con_ciclos(Inicio, Fin, Distancia) :-
        buscar_camino(Inicio, Fin, Distancia, [Inicio]).
    
    buscar_camino(Actual, Fin, 0, _) :-
        Actual == Fin, !.
    buscar_camino(Actual, Fin, Distancia, Visitados) :-
        arco(Actual, Siguiente, D),
        \+ member(Siguiente, Visitados),
        buscar_camino(Siguiente, Fin, DistanciaRestante, [Siguiente|Visitados]),
        Distancia is D + DistanciaRestante.