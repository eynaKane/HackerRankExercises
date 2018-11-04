#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
  max = ar.max
  count = ar.select { |num| num == max }.count
end

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = birthdayCakeCandles ar

puts result

# ❯ ruby birthday_candles.rb 
# 4
# 3 2 1 3
# ❯
# 2