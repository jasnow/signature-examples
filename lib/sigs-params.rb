# coding: utf-8
# typed: true
require 'sorbet-runtime'

# From: https://sorbet.org/docs/sigs#params-annotating-parameter-types

class Main
  # Bring the `sig` method into scope
  extend T::Sig

  sig do
    params(
      x: String,      # ← x is a positional param
      y: String,      # ← y is a keyword param
      rest: String,   # ← For rest args, write the type of the element
      blk: T.proc.returns(NilClass),
    )
    .returns(Integer)
  end
  def self.main(x, y:, *rest, &blk)
    # Sorbet infers (!) the type of a:
    a = x.length + y.length

    # We can use `T.reveal_type` to ask Sorbet for the type of an expression:
    T.reveal_type(a) # => Revealed type: `Integer`

    # Rest args become an Array in the method body:
    T.reveal_type(rest) # => Revealed type: `T::Array[String]`
  end
end
