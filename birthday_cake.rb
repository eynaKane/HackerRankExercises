# https://www.hackerrank.com/challenges/the-birthday-bar/problem
require 'json'
require 'stringio'
require 'pry'

def birthday(s, d, m, n)
  return 0 if m > n

  slice_ctr = 0
  ctr = 0

  while ctr < n
    slice_sum = s[ctr..ctr + (m - 1)].sum
    slice_ctr += 1 if slice_sum == d
    ctr += 1
  end

  slice_ctr
end

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = birthday s, d, m, n

puts result

# ruby birthday_cake.rb
# 6
# 1 1 1 1 1 1
# 3 2

# 0
