# From: https://sorbet.org/docs/error-reference#5013

class A
  @@x = T.cast(10, Integer)
end
