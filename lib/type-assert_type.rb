class A
  extend T::Sig

# From: https://sorbet.org/docs/type-assertions#tassert_type

  sig {params(x: T.untyped).void}
  def foo(x)
    T.assert_type!(x, String) # error here
  end
end
