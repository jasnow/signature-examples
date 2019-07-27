extend T::Sig

# From: https://sorbet.org/docs/class-types#booleans

sig {params(new_value: T::Boolean).void}
def set_flag(new_value)
  @flag = new_value
  puts "Set value to #{new_value}"
end

set_flag(true)
set_flag(false)
