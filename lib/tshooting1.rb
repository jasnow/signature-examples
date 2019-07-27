# typed: true

# From: https://sorbet.org/docs/troubleshooting

extend T::Sig

sig {params(xs: T::Array[Integer]).returns(Integer)}
def foo(xs)
  T.reveal_type(xs.first) # => Revealed type: `T.nilable(Integer)`
end
