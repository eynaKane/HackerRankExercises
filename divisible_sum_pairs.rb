# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
require 'json'
require 'stringio'

def divisible_sum_pairs(n, k, ar)
  result = []

  ar.each_with_index do |value, index|
    ctr = index + 1

    while ctr < n
      result << [value, ar[ctr]] if ((value + ar[ctr]) % k).zero?

      ctr += 1
    end
  end

  result
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = divisible_sum_pairs n, k, ar

result.map { |r| print "[#{r.join(' ')}] " }

puts "\n#{result.count}"

# ruby divisible_sum_pairs.rb
# 6 3
# 1 3 2 6 1 2
# [1 2] [1 2] [3 6] [2 1] [1 2]

# 5
