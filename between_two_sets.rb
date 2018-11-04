#!/bin/ruby

require 'pry'

def getTotalX(a, b)
  a = a.sort # reference_number / a
  b = b.sort # b / reference_number
  result = []
  abort = false

  range_first = a.last # 4	| 6
  range_last = b.first # 16	| 24

  (range_first..range_last).each do |num| 
    a.map do |a_num|
      abort = num % a_num != 0 ? true : false
      break if abort
    end

    unless abort 
      b.map do |b_num|
        abort = b_num % num != 0 ? true : false
        break if abort
      end
    end

    result << num unless abort
  end

  result.count
end
# n m
# 2 3

# a[]
# 2 4					| 2 6
# b[] 
# 16 32 96		| 24 26

# 4, 8 and 16 (less than b[])		| 6, 12

# 4,8,12,16 / 
# 4,8,12,16 / 4

# 16 / 4,8,16 
# 32 / 4,8,16
# 96 / 4,8,16;

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

a = gets.rstrip.split(' ').map(&:to_i)

b = gets.rstrip.split(' ').map(&:to_i)

total = getTotalX a, b

puts total

# ❯ ruby between_two_sets.rb
# 2 3
# 2 4
# 16 32 96
# ❯
# 3