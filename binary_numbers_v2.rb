#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# GET BINARY
def get_binary(n)
  num = n
  binary = ""

  while num != 0 do 
    binary += (num % 2).to_s
    num /= 2
  end

  binary.reverse
end

# GET LARGEST CONSECUTIVE 1s
def get_consecutive_1s(binary)
  largest_consecutive = 0

  binary.split('0').map do |group|
    if group.length > largest_consecutive
      largest_consecutive = group.length
    end
  end

  largest_consecutive
end

n = gets.to_i

binary = get_binary(n)

consecutive = get_consecutive_1s(binary)

puts "Binary: #{binary}"
puts "Largest consecutive 1's: #{consecutive}"

# ❯ ruby binary_numbers_v2.rb
# 5
# ❯
# Binary: 101
# Largest consecutive 1's: 1
