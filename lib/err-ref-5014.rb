# typed: true

# From: https://sorbet.org/docs/error-reference#5014

# If you use "typed: strict" see:
# https://sorbet.org/docs/error-reference#5036

class Parent
  extend T::Generic
  Foo = type_member
end

class Child < Parent
  extend T::Generic
# SOLUTION: Add "Foo = type_member" again.
end
