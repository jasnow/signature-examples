# coding: utf-8
require 'sorbet-runtime'

# From: https://sorbet.org/docs/runtime

# (1) Register call_validation_error_handler callback.
# This runs every time a method with a sig fails to type check at runtime.
T::Configuration.call_validation_error_handler = lambda do |signature, opts|
  #                                                     ┌──┐
  if signature.on_failure && signature.on_failure[0] == :log
    puts opts[:pretty_message]
  else
    raise TypeError.new(opts[:pretty_message])
  end
end

class Main
  extend T::Sig

  # (2) Use .on_failure in the sig for a method
  #                                       ┌───────────────┐
  sig {params(argv: T::Array[String]).void.on_failure(:log)}
  def self.main(argv)
    puts argv
  end
end

# (3) When we call main incorrectly, it will print
# with puts instead of raise an exception.
Main.main(42)

# Output:
# ❯ ruby example.rb
# Parameter 'argv': Expected type T::Array[String], got type Integer with value 42
# Caller: example.rb:25
# Definition: example.rb:18
# 42
