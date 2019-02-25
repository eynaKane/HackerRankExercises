# https://www.hackerrank.com/challenges/ruby-partial-applications/problem
require 'pry'

combination = lambda do |n|
  lambda do |r|
    (1..n).inject(:*) / ((1..r).inject(:*) * (1..n - r).inject(:*))
  end
end

n = gets.to_i
r = gets.to_i
ncr = combination.call(n)
puts ncr.call(r)

# ruby ruby_31_partial_application.rb
# 4
# 2

# 6

# ruby ruby_31_partial_application.rb
# 5
# 1

# 5
