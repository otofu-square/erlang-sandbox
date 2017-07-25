-module(highorder).

-export([filter/2, map/2, tail_filter/2, tail_filter/3,
	 tail_map/2, tail_map/3, fold/2]).

map(_, []) -> [];
map(F, [X | Xs]) -> [F(X) | map(F, Xs)].

tail_map(F, L) -> tail_map(F, L, []).

tail_map(_, [], Acc) -> Acc;
tail_map(F, [X | Xs], Acc) ->
    tail_map(F, Xs, Acc ++ [F(X)]).

filter(_, []) -> [];
filter(F, [X | Xs]) ->
    case F(X) of
      true -> [X | filter(F, Xs)];
      false -> filter(F, Xs)
    end.

tail_filter(F, L) -> tail_filter(F, L, []).

tail_filter(_, [], Acc) -> Acc;
tail_filter(F, [X | Xs], Acc) ->
    case F(X) of
      true -> tail_filter(F, Xs, Acc ++ X);
      false -> tail_filter(F, Xs, Acc)
    end.

fold(_, []) -> [];
fold(F, [X | Xs]) -> case F(X) of
	true -> X;
	false -> fold(F, Xs)
end.
