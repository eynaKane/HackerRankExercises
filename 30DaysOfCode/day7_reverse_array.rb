# https://www.hackerrank.com/challenges/30-arrays/problem
require 'json'
require 'stringio'

def reverse_array(arr)
  arr.reverse!
  puts arr.join(' ')
end

arr = gets.rstrip.split(' ').map(&:to_i)

reverse_array(arr)

# ruby day7_reverse_array.rb
# 1 4 3 2

# 2 3 4 1
