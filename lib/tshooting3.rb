# typed: true

# From: https://sorbet.org/docs/troubleshooting

class A
  def method_missing(method)
    puts "Called #{method}"
  end
end

T.unsafe(A.new).foo # => ok
