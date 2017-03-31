/*This is implementation of the quicksort algorithm*/
split2([],_,[],[]).
split2([H|L],Piv,[H|P],N):-
    H>= Piv,
    split2(L,Piv,P,N).
split2([H|L],Piv,P,[H|N]):-
	split2(L,Piv,P,N).
quickSort([],[]).
quickSort([H|L],R):-
    split2(L,H,P,N),
    quickSort(P,X),
    quickSort(N,Y),
    append(Y,[H|X],R).
