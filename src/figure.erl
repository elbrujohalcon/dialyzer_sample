-module figure.

-type t() :: triangle:t() | square:t().

-export_type [t/0].

-export [area/1].

type(Figure) ->
    case {triangle:is_a(Figure), square:is_a(Figure)} of
        {true, false} -> triangle;
        {false, true} -> square
    end.

-spec area(t()) -> number().
area(Figure) ->
    area(type(Figure), Figure).

area(triangle, Triangle) -> triangle:area(Triangle);
area(square, Square) -> square:area(Square).
