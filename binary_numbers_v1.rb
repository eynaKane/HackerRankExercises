# https://www.hackerrank.com/challenges/30-binary-numbers/problem
require 'json'
require 'stringio'
require 'pry'

# GET HIGHEST INDEX
def get_index(n)
  ctr = 0 # 0 1 2 3 4 5
  num = 0 # 0 1 2 4 8 16

  while num < n
    num = 2**ctr
    ctr += 1
  end

  ctr - 2
end

# GET BINARY
def get_binary(n, index)
  binary = ''
  sum_check = 0
  temp = 0

  while index >= 0
    temp = 2**index

    # binding.pry
    if (sum_check + temp) <= n
      sum_check += temp
      binary += '1'
    else
      binary += '0'
    end

    index -= 1
  end

  binary
end

# GET CONSECUTIVE 1s
def get_consecutive_1s(binary)
  largest_consecutive = 0

  binary.split('0').map do |group|
    largest_consecutive = group.length if group.length > largest_consecutive
  end

  largest_consecutive
end

n = gets.to_i

index = get_index(n)

binary = get_binary(n, index)

consecutive = get_consecutive_1s(binary)

puts "Index: #{index}"
puts "Binary: #{binary}"
puts "Largest consecutive 1's: #{consecutive}"

# ruby binary_numbers_v1.rb
# 13

# Index: 3
# Binary: 1101
# Largest consecutive 1's: 2
