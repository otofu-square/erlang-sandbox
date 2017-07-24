-module(highorder).

-export([map/2, tail_map/2, tail_map/3]).

map(_, []) -> [];
map(F, [X | Xs]) -> [F(X) | map(F, Xs)].

tail_map(F, L) -> tail_map(F, L, []).

tail_map(_, [], Acc) -> Acc;
tail_map(F, [X | Xs], Acc) ->
    tail_map(F, Xs, Acc ++ [F(X)]).
