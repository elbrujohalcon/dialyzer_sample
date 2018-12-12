# Dialyzer Examples

This branch describes one of the dialyzer samples. Find the others in other branches.

## Union of Opaque Types
In this case, we have `figure:t/0` defined as follows...

```erlang
-type t() :: triangle:t() | square:t().
```

But `triangle:t/0` and `square:t/0` are opaques.
Then, we want to use functions that work on those types on instances of `figure:t/0`.
