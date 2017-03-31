/*This predicate takes two list to check if the second is a sublist of the first*/
sublist([],_).
sublist([H|T], [H|T1]):-
  subtail(T, T1).

sublist(T, [_|T1]):-
  sublist(T, T1).

subtail([],_).
subtail([H|T], [H|T1]):-
    subtail(T,T1).
