/*This takes two lists and checks if one is a subset of the other*/

subset([],_).
subset([H|T], L):-
member(H, L),
subset(T,L).
