# https://www.hackerrank.com/challenges/diagonal-difference/problem
require 'json'
require 'stringio'
require 'pry'

def diagonal_difference(arr, n)
  first = []
  second = []
  ctr = 0
  ctr2 = n - 1

  while ctr < n
    first << arr[ctr][ctr]
    second << arr[ctr][ctr2]
    ctr += 1
    ctr2 -= 1
  end

  (first.sum - second.sum).abs
end

n = gets.to_i

arr = Array.new(n)

n.times do |i|
  arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonal_difference(arr, n)

puts result

# ruby diagonal_difference.rb
# 3
# 11 2 4
# 4 5 6
# 10 8 -12

# 15
