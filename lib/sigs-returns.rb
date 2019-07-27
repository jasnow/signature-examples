# From: https://sorbet.org/docs/sigs#returns-void-annotating-return-types

# SOLUTION: Add this:
# sig { void }
def main
  5.times do
    puts 'Hello, world!'
  end
end
