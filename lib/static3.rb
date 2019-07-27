# typed: true

# From: https://sorbet.org/docs/static

extend T::Sig

sig {params(env: T::Hash[Symbol, T.untyped], key: Symbol).void}
def log_env(env, key)
  puts "LOG: #{key} => #{env[key]}"
end

log_env({timeout_len: 2000, user: 'jez'}, :user)  # ok
