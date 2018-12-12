-module triangle.

-opaque t() :: #{base := number(), height := number()}.
-export_type [t/0].

-export [new/2, area/1, is_a/1].

-spec new(number(), number()) -> t().
new(Base, Height) -> #{base => Base, height => Height}.

-spec area(t()) -> number().
area(#{base := B, height := H}) -> B * H / 2.

-spec is_a(term()) -> boolean().
is_a(#{height := _, base := _} = Triangle) when map_size(Triangle) == 2 -> true;
is_a(_) -> false.
