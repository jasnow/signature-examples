# typed: true

# From: https://sorbet.org/docs/runtime

require 'sorbet-runtime'

class Example
  extend T::Sig

  def self.some_untyped_method
    nil
  end

  sig {params(x: Integer).returns(Integer)}
  def self.add_one(x)
    x + 1
  end
end

Example.add_one(Example.some_untyped_method)
