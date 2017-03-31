/*program to generate the next higher permutation of a list of positive integers*/

indexOfSmall([L,R|T], R, 1):-
L>R.

indexOfSmall([_|Tail], Element, Index):-
indexOfSmall(Tail, Element, Index1),
Index is Index1+1.

indexOfLarge([L|T], X, L, 0):-
L>X.
indexOfLarge([_|Tail],X, Element, Index):-
indexOfLarge(Tail, X, Element, Index1),
Index is Index1+1.

swapElements([_|T], 0, X, [X|T]).
swapElements([H|T], I, X, [H|R]):-
    I > 0,
    NI is I-1,
    swapElements(T, NI, X, R).

revTo([H|T], -1, [H|R]):-
    reverse(T,R).
revTo([H|T],X,[H|R]):-
    X2 is X-1,
    revTo(T, X2, R).


nextHigherPermutation(L,P):-
  reverse(L,RL),
  indexOfSmall(RL,X,Index),
  indexOfLarge(RL,X,Y,Index1),
  reverse(RL,L),
  swapElements(RL,Index,Y,R),
  swapElements(R,Index1,X,NL),
  reverse(NL,New),
  revTo(New,Index1,P).
