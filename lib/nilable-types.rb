extend T::Sig

# From: https://sorbet.org/docs/nilable-types

sig {params(x: T.nilable(String)).void}
def foo(x)
  if x
    puts "x was not nil! Got: #{x}"
  else
    puts "x was nil"
  end
end
