-module(pattern).
-export([xOr1/2, xOr2/2, xOr3/2, howManyEquals/3, maxThree/3]).


xOr1(A,B) ->
    not(A==B).

xOr2(A,B) ->
    A=/=B.

xOr3(A,B) ->
    (not A and B) or (not B and A).

maxThree(A, B, C) ->
    max(A,max(B,C)).

howManyEquals(A, A, A) ->
    3;

howManyEquals(A, _, A) -> 
    2; 

howManyEquals(A,A,_) -> 
    2;

howManyEquals(_,A,A) -> 
    2;

howManyEquals(_,_,_) -> 
    0.
