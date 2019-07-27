# From: https://sorbet.org/docs/type-annotations

class MyObj
  def initialize
    @foo = T.let(0, Integer)
  end
end

# SOLUTON:
#class Foo
#  sig {params(x: Integer, y: Integer).void}
#  def initialize(x, y)
#    @x = x
#    @y = T.let(y, Integer)
#
#    T.reveal_type(@x)  # T.untyped
#    T.reveal_type(@y)  # Integer
#  end
#end

class HasVariables
  # Class variable
  @@llamas = T.let([], T::Array[Llama])

  # Instance variable on the singleton class
  @alpaca_count = T.let(0, Integer)
end
