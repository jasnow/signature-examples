# typed: true

# From: https://sorbet.org/docs/troubleshooting

class A
  def method_missing(method)
    puts "Called #{method}"
  end

  def initialize
    T.unsafe(self).foo # ok
  end
end
