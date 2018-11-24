# https://www.hackerrank.com/challenges/30-binary-numbers/problem
require 'json'
require 'stringio'
require 'pry'

# GET BINARY
def get_binary(n)
  num = n
  binary = ''

  while num != 0
    binary += (num % 2).to_s
    num /= 2
  end

  binary.reverse
end

# GET LARGEST CONSECUTIVE 1s
def get_consecutive_1s(binary)
  largest_consecutive = 0

  binary.split('0').map do |group|
    largest_consecutive = group.length if group.length > largest_consecutive
  end

  largest_consecutive
end

n = gets.to_i

binary = get_binary(n)

consecutive = get_consecutive_1s(binary)

puts "Binary: #{binary}"
puts "Largest consecutive 1's: #{consecutive}"

# ruby day_10_binary_numbers.rb
# 5

# Binary: 101
# Largest consecutive 1's: 1

# ruby day_10_binary_numbers.rb
# 6

# Binary: 110
# Largest consecutive 1's: 2

# ruby day_10_binary_numbers.rb
# 439

# Binary: 110110111
# Largest consecutive 1's: 3
