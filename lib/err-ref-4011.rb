# From: https://sorbet.org/docs/error-reference#4011

class Main
  extend T::Generic

  Elem = type_member
  Elem = type_member # error: Duplicate type member

# SOLUTION: Remove line 6 or 7 (dup).
end
