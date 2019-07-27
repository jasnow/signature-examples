# From: https://sorbet.org/docs/error-reference#5048

class C
  extend T::Helpers
  final!

  def no_sig; end # error

  extend T::Sig

  sig {void}
  def non_final_sig; end # error

  sig(:final) {void}
  def final_sig; end # good
end
