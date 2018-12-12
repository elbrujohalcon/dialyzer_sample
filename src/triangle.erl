-module triangle.

-record(triangle, {base :: number(), height :: number()}).
-opaque t() :: #triangle{}.
-export_type [t/0].

-export [new/2, area/1, is_a/1].

-spec new(number(), number()) -> t().
new(Base, Height) -> #triangle{base = Base, height = Height}.

-spec area(t()) -> number().
area(#triangle{base = B, height = H}) -> B * H / 2.

-spec is_a(term()) -> boolean().
is_a(Term) -> is_record(Term, triangle).
