-module test.

-export [run/0].

-spec run() -> _.
run() ->
    [4.0, 1.0] = [1.0 * figure:area(F) || F <- [square:new(2), triangle:new(2, 1)]].
