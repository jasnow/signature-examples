extend T::Sig

# From: https://sorbet.org/docs/type-assertions#tcast

class A; def foo; end; end
class B; def bar; end; end

sig {params(label: String, a_or_b: T.any(A, B)).void}
def foo(label, a_or_b)
  case label
  when 'a'
    a_or_b.foo
# SOLUTON: Replace previous 1 line with:
#    T.cast(a_or_b, A).foo
  when 'b'
    a_or_b.bar
# SOLUTON: Replace previous 1 line with:
#    T.cast(a_or_b, B).bar
  end
end
