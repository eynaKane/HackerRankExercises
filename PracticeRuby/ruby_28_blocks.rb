# https://www.hackerrank.com/challenges/ruby-blocks/problem
require 'pry'

def factorial
  yield
end

n = gets.to_i

factorial do
  result = (1..n).inject(:*)

  puts result
end

# ruby ruby_28_blocks.rb
# 5

# 120

# ruby ruby_28_blocks.rb
# 3

# 6
