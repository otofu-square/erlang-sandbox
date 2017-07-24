-module(tree).

-export([empty/0, insert/3]).

empty() -> {node, nil}.

insert(Key, Val, {node, nil}) ->
    {node, {Key, Val, {node, nil}, {node, nil}}};
insert(NewKey, NewVal,
       {node, {Key, Val, Smaller, Larger}})
    when NewKey < Key ->
    {node,
     {Key, Val, insert(NewKey, NewVal, Smaller), Larger}};
insert(NewKey, NewVal,
       {node, {Key, Val, Smaller, Larger}})
    when NewKey > Key ->
    {node,
     {Key, Val, Smaller, insert(NewKey, NewVal, Larger)}};
insert(Key, Val, {node, {Key, _, Smaller, Larger}}) ->
    {node, {Key, Val, Smaller, Larger}}.
