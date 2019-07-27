# From: https://sorbet.org/docs/error-reference#4002

module A; end
module B; end

def x
  rand.round == 0 ? A : B
end

class Main
  T.unsafe(self).include x
end
