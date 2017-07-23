-module(fizzbuzz).

-export([fizzbuzz/1]).

fizzbuzz(N) when (N rem 3 == 0 and N rem 5) == 0 ->
    "fizzbuzz";
fizzbuzz(N) when N rem 3 == 0 -> "fizz";
fizzbuzz(N) when N rem 5 == 0 -> "buzz";
fizzbuzz(N) -> N.
