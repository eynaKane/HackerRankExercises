# https://www.hackerrank.com/challenges/ruby-tutorials-object-method-parameters/problem
require 'pry'

# Class that can check if a number is within range
class Number
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def within_range?(first, last)
    (first..last).cover? num
  end
end

ctr = gets.to_i

ctr.times do
  input = gets.split.map(&:to_i)
  a = Number.new(input[0])
  b = input[1]
  c = input[2]

  puts a.within_range?(b, c)
end

# ruby ruby_03_object_method_params.rb
# 5
# 1 2 3

# false

# 2 1 3

# true

# 3 2 5

# true

# 3 3 3

# true

# 1 2 5

# false
