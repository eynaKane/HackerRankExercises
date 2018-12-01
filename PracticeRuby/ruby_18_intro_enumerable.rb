# https://www.hackerrank.com/challenges/ruby-enumerable-introduction/problem
require 'pry'
require 'faker'

# Color generator
class Color
  attr_accessor :color

  def initialize
    @color = Faker::Color.color_name
  end
end

def iterate_colors(colors)
  arr = []

  colors.each do |color|
    arr << color.color
  end

  puts 'Correct! You have succesfully iterated over the elements.'
  puts '[' + arr.join(', ') + ']'
end

colors = []

3.times do
  colors << Color.new
end

iterate_colors(colors.to_enum)

# ruby ruby_18_intro_enumerable.rb

# Correct! You have succesfully iterated over the elements.
# [violet, gold, gold]
