-module square.

-record(square, {side :: number()}).
-opaque t() :: #square{}.
-export_type [t/0].

-export [new/1, area/1, is_a/1].

-spec new(number()) -> t().
new(Side) -> #square{side = Side}.

-spec area(t()) -> number().
area(#square{side = S}) -> S * S.

-spec is_a(term()) -> boolean().
is_a(Term) -> is_record(Term, square).
