# typed: true

# From: https://sorbet.org/docs/error-reference#5008

A = T.type_alias(Integer)
class B < A; end # error: Superclasses and mixins may not be type aliases

module M; end

AliasModule = T.type_alias(M)
class C
  include AliasModule # error: Superclasses and mixins may not be type aliases
end
