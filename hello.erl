#!/usr/bin/env escript


main(_) ->
    Stuff = iterate([{name, "Joe Shmoe"}, {age, "67"}, {height, "87"}]),
    Stuff = io:format("~p~n", [Stuff]).

iterate(List) ->
    iterate(List, []).


iterate([], Acc) -> Acc;

iterate([{name, Name}|Tail], Acc) ->
    iterate(Tail, [Name|Acc]);

iterate([_|Tail], Acc) ->
    iterate(Tail, Acc).
