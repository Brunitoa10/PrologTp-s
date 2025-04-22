% Base de conocimiento
word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

% Crucigrama con intersecciones y única solución
crossword(V1, V2, V3, H1, H2, H3) :-
    word(V1, V1_1, V1_2, V1_3, V1_4, V1_5, V1_6, V1_7),
    word(V2, V2_1, V2_2, V2_3, V2_4, V2_5, V2_6, V2_7),
    word(V3, V3_1, V3_2, V3_3, V3_4, V3_5, V3_6, V3_7),
    word(H1, H1_1, H1_2, H1_3, H1_4, H1_5, H1_6, H1_7),
    word(H2, H2_1, H2_2, H2_3, H2_4, H2_5, H2_6, H2_7),
    word(H3, H3_1, H3_2, H3_3, H3_4, H3_5, H3_6, H3_7),

    % Intersecciones:
    % H1[1] = V1[1], H1[4] = V2[1], H1[7] = V3[1]
    H1_1 = V1_1, H1_4 = V2_1, H1_7 = V3_1,
    % H2[1] = V1[4], H2[4] = V2[4], H2[7] = V3[4]
    H2_1 = V1_4, H2_4 = V2_4, H2_7 = V3_4,
    % H3[1] = V1[7], H3[4] = V2[7], H3[7] = V3[7]
    H3_1 = V1_7, H3_4 = V2_7, H3_7 = V3_7,

    % Imprimir crucigrama
    nl,
    format('~w ~w ~w ~w ~w ~w ~w~n', [H1_1, H1_2, H1_3, H1_4, H1_5, H1_6, H1_7]),
    format('~w   ~w   ~w~n',        [V1_2, V2_2, V3_2]),
    format('~w   ~w   ~w~n',        [V1_3, V2_3, V3_3]),
    format('~w ~w ~w ~w ~w ~w ~w~n', [H2_1, H2_2, H2_3, H2_4, H2_5, H2_6, H2_7]),
    format('~w   ~w   ~w~n',        [V1_5, V2_5, V3_5]),
    format('~w   ~w   ~w~n',        [V1_6, V2_6, V3_6]),
    format('~w ~w ~w ~w ~w ~w ~w~n', [H3_1, H3_2, H3_3, H3_4, H3_5, H3_6, H3_7]),
    nl, !.  % El corte (!) evita más soluciones después de la primera válida
