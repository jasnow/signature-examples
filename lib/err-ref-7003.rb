# From: https://sorbet.org/docs/error-reference#7003

module MyModule; end
# SOLUTION: Replace previous line with:
#module MyModule
#  include Kernel
#end

sig {params(x: MyModule).void}
def foo(x)
  x.nil? # error: Method `nil?` does not exist on `MyModule`
end
