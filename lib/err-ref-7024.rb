# typed: strict

# From: https://sorbet.org/docs/error-reference#7024

extend T::Sig

# SOLUTION: Add this:
#sig {params(blk: T.untyped).returns(T.untyped)}
def foo(&blk)
    proc(&blk)
end
