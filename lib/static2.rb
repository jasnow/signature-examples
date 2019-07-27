 typed: true

# From: https://sorbet.org/docs/static

# (1) add this to get access to sig method
extend T::Sig

# (2) add a signature
sig {params(env: T::Hash[Symbol, Integer], key: Symbol).void}
def log_env(env, key)
  puts "LOG: #{key} => #{env[key]}"
end

# => Expected `Symbol` but found `String("timeout_len")`
log_env({timeout_len: 2000}, 'timeout_len') 
