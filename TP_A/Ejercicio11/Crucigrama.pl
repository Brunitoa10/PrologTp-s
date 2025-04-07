% Base de palabras
% Base de conocimiento modificado
word(astante, a,s,t,a,n,t,e).
word(statale, s,t,a,t,a,l,e).
word(tastare, t,a,s,t,a,r,e).
word(ascesso, a,s,c,e,s,s,o).
word(traccia, t,r,a,c,c,i,a).
word(easista, e,a,s,i,s,t,a).

% crucigrama con intersección válida
crossword(V1, V2, V3, H1, H2, H3) :-
    word(V1, V11, V12, V13, V14, V15, V16, V17),
    word(V2, V21, V22, V23, V24, V25, V26, V27),
    word(V3, V31, V32, V33, V34, V35, V36, V37),

    word(H1, V11, V21, V31, H14, H15, H16, H17),
    word(H2, V12, V22, V32, H24, H25, H26, H27),
    word(H3, V13, V23, V33, H34, H35, H36, H37).
