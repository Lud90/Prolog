/*This predicate splits a list of numbers into two lists: non-negatives and negatives*/
split([],[],[]).
split([H|L],[H|P],N):-
    H>= 0,
    split(L,P,N).

split([H|L],P,[H|N]):-
	split(L,P,N).
