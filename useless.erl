-module(useless).

-export([add/2, add/3, call_sub/1, greet_and_add_two/1,
	 hello/0]).

-define(HOUR, 3600).

-define(sub(X, Y), X - Y).

add(A, B) -> A + B.

add(A, B, C) -> A + B + C.

hello() -> io:format("Hello, World!~n").

greet_and_add_two(X) -> hello(), add(X, 2).

call_sub(X) -> ?sub(3600, X).
