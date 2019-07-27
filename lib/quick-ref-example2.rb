# typed: true

require 'sorbet-runtime'

# From: https://sorbet.org/docs/quickref

class Main
  extend T::Sig

  sig {void}
  def self.main
    puts 'Hello, world!'
  end
end

Main.main
