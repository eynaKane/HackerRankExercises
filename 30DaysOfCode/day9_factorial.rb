# https://www.hackerrank.com/challenges/30-recursion/problem
require 'json'
require 'stringio'
require 'pry'

def factorial(n)
  return n * factorial(n - 1) if n > 1

  n
end

n = gets.to_i

result = factorial n

puts result

# ruby day9_factorial.rb
# 3
# 6

# HackerRankExercises git/30-days-of-code  11s
# ruby day9_factorial.rb
# 5
# 120
