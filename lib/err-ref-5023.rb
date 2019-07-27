# From: https://sorbet.org/docs/error-reference#5023

class Example
  include Enumerable

#SOLUTION: Add this:
#  def each(&blk)
#  end
end
