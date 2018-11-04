# https://www.hackerrank.com/challenges/counting-valleys/problem
require 'json'
require 'stringio'
require 'pry'

def counting_valleys(n, s)
  ctr = 0
  place = 0
  traverse = 0

  while ctr < n
    if s[ctr] == 'U'
      place += 1
      traverse += 1 if place.zero?
    elsif s[ctr] == 'D'
      place -= 1
    end

    ctr += 1
  end

  traverse
end

n = gets.to_i

s = gets.to_s.rstrip.split(//)

result = counting_valleys n, s

puts result

# ruby counting_valleys.rb
# 8
# UDDDUDUU

# 1
