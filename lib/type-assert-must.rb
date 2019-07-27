class A
  extend T::Sig

# From: https://sorbet.org/docs/type-assertions#tmust

  sig {void}
  def foo
    x = T.let(nil, T.nilable(String))
    y = T.must(nil)
    puts y # error: This code is unreachable
  end

  sig {void}
  def bar
    vals = T.let([], T::Array[Integer])
    x = vals.find {|a| a > 0}
    T.reveal_type(x) # Revealed type: T.nilable(Integer)
    y = T.must(x)
    puts y # no static error
  end

end
