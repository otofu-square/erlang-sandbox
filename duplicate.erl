-module(duplicate).

-export([dup/2, tail_dup/2, tail_dup/3]).

dup(0, _) -> [];
dup(N, Elm) -> [Elm | dup(N - 1, Elm)].

tail_dup(N, Elm) -> tail_dup(N, Elm, []).

tail_dup(0, _, List) -> List;
tail_dup(N, Elm, List) ->
    tail_dup(N - 1, Elm, [Elm | List]).
