# From: https://sorbet.org/docs/static

define_singleton_method(:foo) { puts 'A.foo'; true }

if T.unsafe(self).foo  # ok
  puts 'succeeded'
end
