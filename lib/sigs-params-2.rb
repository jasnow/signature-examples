# typed: true
require 'sorbet-runtime'

# From: https://sorbet.org/docs/sigs#params-annotating-parameter-types

class Main
  extend T::Sig

  sig {returns(Integer)}
  def self.main
    42
  end
end
