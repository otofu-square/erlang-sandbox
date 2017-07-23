-module(reverse).

-export([reverse/1, tail_reverse/1, tail_reverse/2]).

reverse([]) -> [];
reverse([X | Xs]) -> reverse(Xs) ++ [X].

tail_reverse(List) -> tail_reverse(List, []).

tail_reverse([], Acc) -> Acc;
tail_reverse([X | Xs], Acc) ->
    tail_reverse(Xs, [X] ++ Acc).
