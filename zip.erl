-module(zip).

-export([tail_zip/2, tail_zip/3, zip/2]).

zip([], []) -> [];
zip([L1 | L1s], [L2 | L2s]) ->
    [{L1, L2} | zip(L1s, L2s)].

tail_zip(L1, L2) -> tail_zip(L1, L2, []).

tail_zip([], [], Acc) -> Acc;
tail_zip([L1 | L1s], [L2 | L2s], Acc) ->
    tail_zip(L1s, L2s, Acc ++ [{L1, L2}]).
