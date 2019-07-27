# From: https://sorbet.org/docs/error-reference#7006

x = false

if x
  puts 'hello!' # error: This code is unreachable
end

if T.unsafe(x)
  puts 'hello!' # ok
end
