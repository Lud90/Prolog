/*
Evaluating the Ackermann’s function ack that has the following rules: 
ack(0, N ) = N + 1 
ack(M,0)=ack(M 1, 1), M>0
ack(M,N)=ack(M 1, ack(M,N 1))M>0, N>0
*/

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
