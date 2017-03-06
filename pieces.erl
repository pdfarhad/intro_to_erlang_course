-module(pieces).
-export([pieces/1]).

pieces(0) -> 1;

pieces(N) when N > 1 -> N + pieces(N-1).