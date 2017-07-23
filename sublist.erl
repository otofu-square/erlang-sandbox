-module(sublist).

-export([sublist/2, tail_sublist/2, tail_sublist/3]).

sublist(_, 0) -> [];
sublist([X | Xs], N) -> [X | sublist(Xs, N - 1)].

tail_sublist(L, N) -> tail_sublist(L, N, []).

tail_sublist(_, 0, Acc) -> Acc;
tail_sublist([X | Xs], N, Acc) ->
    tail_sublist(Xs, N - 1, Acc ++ [X]).
