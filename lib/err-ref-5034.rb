# From: https://sorbet.org/docs/error-reference#5034

A = T.type_alias(Integer)
B = A # error: Reassigning a type alias is not allowed
#SOLUTION: Replace previous line with:
#B = T.type_alias(A)
