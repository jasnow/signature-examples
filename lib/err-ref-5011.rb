# From: https://sorbet.org/docs/error-reference#5011

class A < A; end

class B < C; end
class C < B; end
