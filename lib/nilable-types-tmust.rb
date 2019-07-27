# typed: true
extend T::Sig

# From: https://sorbet.org/docs/nilable-types#tmust-asserting-that-something-is-not-nil

sig {params(x: Integer).void}
def doesnt_take_nil(x); end

sig {params(key: Symbol, options: T::Hash[Symbol, Integer]).void}
def foo(key, options)
  val = options[key]
# SOLUTION: Replace prevous line wit:
#   val = T.must(options[key])

  # error: Expected `Integer` but found `T.nilable(Integer)` for argument `x`
  doesnt_take_nil(val) 
end
