# From: https://sorbet.org/docs/error-reference#7004

def foo(x: nil); end

foo(1) # error
foo(y: 1) # error
foo(x: 1) # ok
foo() # ok

def bar(x:); end

bar() # error
bar(1) # error
bar(x: 1) # ok
