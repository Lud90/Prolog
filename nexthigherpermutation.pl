/*program to generate the next higher permutation of a list of positive integers*/
isHigher([H|T1],[H|T2]):-
    isHigher(T1,T2).
isHigher([H|L], [H1|L1]):-
    H>H1.
isFarHigher(P,L):-
    permutation(L,P1),
    isHigher(P1,L),
	isHigher(P,P1).
nextHigherPermutation([],[]).
nextHigherPermutation(L,P):-
	permutation(L,P),
    isHigher(P,L),
    not(isFarHigher(P,L)).
