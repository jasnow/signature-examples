# From: https://sorbet.org/docs/error-reference#7003

module MyModule
  def foo; puts 'hello'; end
end

# SOLUTIONS:
# Option 1: include Kernel
#module MyModule
#  include Kernel
#
#  def foo; puts 'hello'; end
#end
#
# Option 2: Kernel.puts
#module MyModule
#  def foo; Kernel.puts 'hello'; end
#end
