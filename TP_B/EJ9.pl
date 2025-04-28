traduccion(el, the).
traduccion(perro, dog).
traduccion(ladra, barks).
traduccion(hola, hello).
traduccion(mundo, world).

traducir_oracion([], []). % Caso base: una oración vacía se traduce a una lista vacía.
traducir_oracion([PalabraCastellano | RestoCastellano], [PalabraIngles | RestoIngles]) :-
    traduccion(PalabraCastellano, PalabraIngles), % Busca la traducción de la primera palabra.
    traducir_oracion(RestoCastellano, RestoIngles). % Traduce el resto de la oración recursivamente.