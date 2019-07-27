# typed: true

# From: https://sorbet.org/docs/troubleshooting

class A
  def method_missing(method)
    puts "Called #{method}"
  end
end

A.new.foo # error: Method `foo` does not exist on `A`
