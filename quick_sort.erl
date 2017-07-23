-module(quick_sort).

-export([quick_sort/1]).

quick_sort([]) -> [];
quick_sort([Pivot | Rest]) ->
    quick_sort([X || X <- Rest, X =< Pivot]) ++
      [Pivot] ++ quick_sort([X || X <- Rest, X > Pivot]).
