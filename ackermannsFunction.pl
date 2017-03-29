/*Evaluating the Ackermann’s function*/

ack(0,N,R):-
    R is N+1.

ack(M,0,R):-
    M>0,
    M2 is M-1,
    ack(M2, 1, R).

ack(M,N, R):-
    M>0,
    N>0,
    M2 is M-1,
    N2 is N-1,
    ack(M,N2,V),
    ack(M2,V,R).
