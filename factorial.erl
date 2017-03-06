-module(factorial).
-export([fac/1,fact_tail/1]).


fac(0) -> 1;
fac(N) when N > 0 -> fac(N-1) * N .


fact_tail(N) -> 
    fact_tail(N,1).

fact_tail(0, P) ->
    P;

fact_tail(N,P) ->
    fact_tail(N-1, N*P).