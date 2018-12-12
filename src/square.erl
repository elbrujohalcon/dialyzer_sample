-module square.

-opaque t() :: #{side := number()}.
-export_type [t/0].

-export [new/1, area/1, is_a/1].

-spec new(number()) -> t().
new(Side) -> #{side => Side}.

-spec area(t()) -> number().
area(#{side := S}) -> S * S.

-spec is_a(term()) -> boolean().
is_a(#{side := _} = Square) when map_size(Square) == 1 -> true;
is_a(_) -> false.
