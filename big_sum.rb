#!/bin/ruby

require 'json'
require 'stringio'

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)
  ar.sum
end

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = aVeryBigSum ar

puts result

# ❯ ruby big_sum.rb
# 5
# 1000000001 1000000002 1000000003 1000000004 1000000005
# ❯
# 5000000015