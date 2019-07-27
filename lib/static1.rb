# typed: true

# From: https://sorbet.org/docs/static

def log_env(env, key)
  puts "LOG: #{key} => #{env[key]}"
end

log_env({timeout_len: 2000}, 'timeout_len')
