# From: https://sorbet.org/docs/error-reference#7001

# Declares `found_valid` with type `FalseClass`
found_valid = false
# SOLUTION: Replace previous line with:
#found_valid = T.let(false, T::Boolean)

list.each do |elem|
  # Might change the type of `found_valid` to `TrueClass`
  found_valid = true if valid?(elem) # error: Changing the type of a variable in a loop
end
