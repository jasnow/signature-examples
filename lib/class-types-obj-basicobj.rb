# From: https://sorbet.org/docs/class-types#object-vs-basicobject

# Some helper methods to play with
sig {params(x: Object).void}
def takes_object(x); end
sig {params(x: BasicObject).void}
def takes_basic_object(x); end

# The one error is because an instance
takes_object(Object.new)              # ok
takes_object(BasicObject.new)         # error
takes_basic_object(Object.new)        # ok
takes_basic_object(BasicObject.new)   # ok

# Some classes to play around with
class ObjectChild; end
class BasicObjectChild < BasicObject; end

# The class that explicitly subclasses `BasicObject`
# can't be given to `takes_object`.
takes_object(ObjectChild.new)              # ok
takes_object(BasicObjectChild.new)         # error
