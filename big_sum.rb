# https://www.hackerrank.com/challenges/a-very-big-sum/problem
require 'json'
require 'stringio'

def a_very_big_sum(ar)
  ar.sum
end

ar = gets.rstrip.split(' ').map(&:to_i)

result = a_very_big_sum ar

puts result

# ruby big_sum.rb
# 1000000001 1000000002 1000000003 1000000004 1000000005

# 5000000015
