# typed: true

# From: https://sorbet.org/docs/error-reference#5006

class A
  extend T::Sig

  def initialize
    @x = T.let(10, Integer)
    @x = T.let("x", String)
  end
end
