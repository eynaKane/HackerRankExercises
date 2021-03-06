# https://www.hackerrank.com/challenges/30-conditional-statements/problem
require 'json'
require 'stringio'

def are_you_weird(num)
  weird_range = (6..20).to_a
  if num.odd? || weird_range.include?(num)
    puts 'Weird'
  else
    puts 'Not Weird'
  end
end

N = gets.to_i
are_you_weird(N)

# ruby day_03_weird_or_not.rb
# 3

# Weird

# ruby day_03_weird_or_not.rb
# 24

# Not Weird
