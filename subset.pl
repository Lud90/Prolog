/*This takes two lists and checks if one is a subset of the other*/
sublist([],_).
sublist([H|T], [H|T1]):-
  subtail(T, T1).

sublist(T, [_|T1]):-
  sublist(T, T1).

subtail([],_).
subtail([H|T], [H|T1]):-
    subtail(T,T1).
