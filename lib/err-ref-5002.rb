# From: https://sorbet.org/docs/error-reference#5002

class Parent
  MY_CONST = 91
end

class Child < Parent; end

# SOLUTION: Replace previous line with:
#class Child < Parent
#  MY_CONST = Parent::MY_CONST
#end

Child::MY_CONST    # error
Parent::MY_CONST   # ok
