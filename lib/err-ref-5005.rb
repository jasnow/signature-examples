# typed: true

# From: https://sorbet.org/docs/error-reference#5005

class A
  extend T::Sig

  def foo
    @@class_var = T.let(10, Integer)
    @x = T.let(10, Integer)
  end

end
