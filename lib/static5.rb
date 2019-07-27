# From: https://sorbet.org/docs/static

define_singleton_method(:foo) { puts 'A.foo'; true }

if foo     # => Method `foo` does not exist on `T.class_of(A)`
  puts 'succeeded'
end
