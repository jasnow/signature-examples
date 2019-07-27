# From: https://sorbet.org/docs/error-reference#7001

found = nil
#SOLUTION: Replace prevous line with:
#found = T.let(nil, T.nilable(String))

list.each do |elem|
  found = elem if want?(elem)
end
