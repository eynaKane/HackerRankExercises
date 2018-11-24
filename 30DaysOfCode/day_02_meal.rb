# https://www.hackerrank.com/challenges/30-operators/problem
require 'json'
require 'stringio'

def solve(meal_cost, tip_percent, tax_percent)
  additional_charges = (tip_percent + tax_percent) / 100.0
  meal_cost += (meal_cost * additional_charges)
  puts meal_cost.round
end

meal_cost = gets.to_f

tip_percent = gets.to_i

tax_percent = gets.to_i

solve(meal_cost, tip_percent, tax_percent)

# ruby day_02_meal.rb
# 12.00
# 20
# 8

# 15
