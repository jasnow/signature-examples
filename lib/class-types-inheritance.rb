extend T::Sig

# From: https://sorbet.org/docs/class-types#inheritance

# Set up an inheritance relationship between three classes
class GrandParentClass; end
class ParentClass < GrandParentClass; end
class ChildClass < ParentClass; end

# Takes ParentClass or lower, not GrandParentClass
sig {params(x: ParentClass).void}
def foo(x); end

foo(GrandParentClass.new)  # error
foo(ParentClass.new)       # ok
foo(ChildClass.new)        # ok
