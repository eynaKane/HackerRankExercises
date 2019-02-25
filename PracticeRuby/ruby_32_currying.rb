# https://www.hackerrank.com/challenges/ruby-curry/problem
require 'pry'

power_function = ->(x, z) { x**z }

base = gets.to_i
power = gets.to_i

raise_to_power = power_function.curry.call(base)
puts raise_to_power.call(power)

# ruby ruby_32_currying.rb
# 2
# 3

# 8

# ruby ruby_32_currying.rb
# 5
# 3

# 125
