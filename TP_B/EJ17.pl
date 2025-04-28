% Predicados para operaciones de conjuntos
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

union_sets([], L, L).
union_sets([H|T], L, Union) :-
    member(H, L),
    union_sets(T, L, Union).
union_sets([H|T], L, [H|Union]) :-
    \+ member(H, L),
    union_sets(T, L, Union).

intersection_sets([], _, []).
intersection_sets([H|T], L, [H|Intersection]) :-
    member(H, L),
    intersection_sets(T, L, Intersection).
intersection_sets([_|T], L, Intersection) :-
    intersection_sets(T, L, Intersection).

difference_sets([], _, []).
difference_sets([H|T], L, [H|Difference]) :-
    \+ member(H, L),
    difference_sets(T, L, Difference).
difference_sets([_|T], L, Difference) :-
    difference_sets(T, L, Difference).

symmetric_difference(Set1, Set2, Result) :-
    intersection_sets(Set1, Set2, Intersection),
    difference_sets(Set1, Intersection, TempResult1),
    difference_sets(Set2, Intersection, TempResult2),
    union_sets(TempResult1, TempResult2, Result).

% Predicado eval/2
eval(Term, Result) :-
    is_list(Term),
    sort(Term, Result).

eval(E1 + E2, Result) :-
    eval(E1, Res1),
    eval(E2, Res2),
    union_sets(Res1, Res2, TempResult),
    sort(TempResult, Result).

eval(E1 / E2, Result) :-
    eval(E1, Res1),
    eval(E2, Res2),
    symmetric_difference(Res1, Res2, TempResult),
    sort(TempResult, Result).

eval(E1 * E2, Result) :-
    eval(E1, Res1),
    eval(E2, Res2),
    intersection_sets(Res1, Res2, TempResult),
    sort(TempResult, Result).

eval(E1 - E2, Result) :-
    eval(E1, Res1),
    eval(E2, Res2),
    difference_sets(Res1, Res2, TempResult),
    sort(TempResult, Result).

eval((E), Result) :-
    eval(E, Result).