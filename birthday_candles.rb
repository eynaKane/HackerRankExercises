# https://www.hackerrank.com/challenges/birthday-cake-candles/problem
require 'json'
require 'stringio'

def birthday_cake_candles(ar)
  max = ar.max
  ar.select { |num| num == max }.count
end

ar = gets.rstrip.split(' ').map(&:to_i)

result = birthday_cake_candles ar

puts result

# ruby birthday_candles.rb
# 3 2 1 3

# 2
