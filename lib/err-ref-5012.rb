# From: https://sorbet.org/docs/error-reference#5011

class A; end
class B; end

class C < A; end
class C < B; end
