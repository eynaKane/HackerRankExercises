# https://www.hackerrank.com/challenges/magic-square-forming/problem
require 'json'
require 'stringio'
require 'pry'

def forming_magic_square(s)
  input = s.join.split(//).map(&:to_i)
  calculator = nil

  possible_combos = [
    [8, 1, 6, 3, 5, 7, 4, 9, 2],
    [6, 1, 8, 7, 5, 3, 2, 9, 4],
    [4, 3, 8, 9, 5, 1, 2, 7, 6],
    [2, 7, 6, 9, 5, 1, 4, 3, 8],
    [2, 9, 4, 7, 5, 3, 6, 1, 8],
    [4, 9, 2, 3, 5, 7, 8, 1, 6],
    [6, 7, 2, 1, 5, 9, 8, 3, 4],
    [8, 3, 4, 1, 5, 9, 6, 7, 2]
  ]

  possible_combos.each do |combo|
    diff = []

    9.times do |ctr|
      diff << (combo[ctr] - input[ctr]).abs
    end

    calculator = diff.sum if calculator.nil? || diff.sum < calculator
  end

  calculator
end

s = Array.new(3)

3.times do |i|
  s[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = forming_magic_square s

puts result

# ruby magic_number.rb
# 5 3 4
# 1 5 8
# 6 4 2

# 7

# ruby magic_number.rb
# 4 5 8
# 2 4 1
# 1 9 7

# 14

# ruby magic_number.rb
# 2 9 8
# 4 2 7
# 5 6 7

# 21
