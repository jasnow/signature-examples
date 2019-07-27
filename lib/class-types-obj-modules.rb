extend T::Sig

# From: https://sorbet.org/docs/class-types#modules

module MyModule
  def some_method
    puts 'inside MyModule'
  end
end

class MyClass
  include MyModule
end

sig {params(x: MyModule).void}
def foo(x)
  x.some_method
end

foo(MyClass.new)  # ok; MyClass mixes in MyModule
