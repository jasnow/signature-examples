# From: https://sorbet.org/docs/class-types

sig {returns(Integer)}
def age
  25
end

sig {params(x: Float).returns(String)}
def float_to_string(x)
  x.to_s
end
