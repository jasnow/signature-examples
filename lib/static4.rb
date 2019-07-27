# From: https://sorbet.org/docs/static

class A
  define_method(:foo) { puts 'In A#foo' }
end

a = A.new
a.foo             # => Method `foo` does not exist on `A`
T.unsafe(a).foo   # ok
