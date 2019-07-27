# typed: true
require 'sorbet-runtime'

# From: https://sorbet.org/docs/sigs#returns-void-annotating-return-types

class Main
  extend T::Sig

  # (1) greet has a useless return:
  sig {params(name: String).void}
  def self.greet(name)
    puts "Hello, #{name}!"
  end

  # (2) name_length must be given a string:
  sig {params(name: String).returns(Integer)}
  def self.name_length(name)
    name.length
  end
end

# (3) It's an error to pass a void result to name_length:
Main.name_length(Main.greet('Alice')) # => error!
