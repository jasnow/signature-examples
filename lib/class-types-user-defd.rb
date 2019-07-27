extend T::Sig

# From: https://sorbet.org/docs/class-types#user-defined-class-types

class MyClass; end

sig {returns(MyClass)}
def foo
  MyClass.new
end
