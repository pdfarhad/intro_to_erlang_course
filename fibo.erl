-module(fibo).
-export([fibo/1]).


fibo(0) -> 0;
fibo(1) -> 1;

fibo(N)  -> fibo(N-1) + fibo(N-2).

fibo_tail(N) -> 
    fibo_tail(N, 1).

