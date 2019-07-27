extend T::Sig

# From: https://sorbet.org/docs/nilable-types#tracking-nil

sig {params(x: String).void}
def must_be_given_string(x)
  puts "Got string: #{x}"
end

sig {params(x: T.nilable(String)).void}
def foo(x)
  # error: Expected `String` but found `T.nilable(String)` for argument `x`
  must_be_given_string(x) 
  if x
    must_be_given_string(x) # ok
  end
end
