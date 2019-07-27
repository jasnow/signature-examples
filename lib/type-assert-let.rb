# From: https://sorbet.org/docs/type-assertions

x = T.let(10, Integer)
T.reveal_type(x) # Revealed type: Integer

y = T.let(10, String) # error: Argument does not have asserted type String
x
