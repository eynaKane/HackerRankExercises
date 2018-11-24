# https://www.hackerrank.com/challenges/30-more-exceptions/problem
require 'pry'

# Exception class
class RangeError < StandardError
end

# Calculator class
class Calculator
  def power(n, p)
    raise RangeError, 'n and p should be non-negative' if n < 0 || p < 0

    n**p
  end
end

my_calculator = Calculator.new

t = gets.to_i

(1..t).each do
  n, p = gets.split.map(&:to_i)

  begin
    ans = my_calculator.power(n, p)
    puts ans.to_i
  rescue RangeError => e
    puts e.message
  end
end

# ruby day_17_exceptions_calculator.rb
# 4
# 3 5

# 243

# 2 4

# 16

# -1 -2

# n and p should be non-negative

# -1 3243

# n and p should be non-negative
