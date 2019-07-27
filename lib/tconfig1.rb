# From: https://sorbet.org/docs/tconfiguration

T::Configuration.call_validation_error_handler = lambda do |signature, opts|
  if signature.on_failure
    puts "Metadata: #{signature.on_failure}"
  end
  raise TypeError.new(opts[:pretty_message])
end

sig {params(x: Integer).void.on_failure(:hello, :world)}
def foo(x); end
