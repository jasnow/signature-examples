# From: https://sorbet.org/docs/error-reference#7019

sig {params(xs: Integer).void}
# SOLUTION; Replace previous line with:
#sig {params(ys: T::Array[Integer]).void}
def foo(*xs); end

xs = Array.new(3) {|i| i}
foo(*xs)
