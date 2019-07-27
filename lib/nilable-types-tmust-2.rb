extend T::Sig

# From: https://sorbet.org/docs/nilable-types#tmust-asserting-that-something-is-not-nil

sig {params(x: T.nilable(Integer)).returns(Integer)}
def foo(x)
  y = T.must(x).abs
  T.reveal_type(y)
end

sig {params(x: T.nilable(Integer)).returns(T.nilable(Integer))}
def bar(x)
  y = x&.abs
  T.reveal_type(y)
end
