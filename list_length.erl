-module(list_length).

-export([len/1, tail_len/1]).

len([]) -> 0;
len([_ | X]) -> 1 + len(X).

tail_len(List) -> tail_len(List, 0).

tail_len([], Acc) -> Acc;
tail_len([_ | List], Acc) -> tail_len(List, Acc + 1).
