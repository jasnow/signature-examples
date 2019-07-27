# typed: strict

# From: https://sorbet.org/docs/error-reference#7023

extend T::Sig

sig {params(blk: T.proc.params(arg0: String).void).void}
def foo(&blk)
end

foo(&method(:puts))
# SOLUTION: Replace previous line with:
#foo do |arg0|
#    method(:puts).call(arg0)
#end
