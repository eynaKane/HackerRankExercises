# https://www.hackerrank.com/challenges/ruby-enumerable-reduce/problem
require 'pry'

def sum_terms(n)
  result = (1..n).reduce(0) do |base, num|
    puts 'Base: ' + base.to_s + ', Num: ' + num.to_s
    base + (num**2 + 1)
  end

  puts 'Final Base: ' + result.to_s
  puts
end

sum_terms(5)
sum_terms(10)

puts 'Kudos! You\'ve succesfully completed the challenge on reduce.'

# ruby ruby_21_reduce_enumerable.rb

# Base: 0, Num: 1
# Base: 2, Num: 2
# Base: 7, Num: 3
# Base: 17, Num: 4
# Base: 34, Num: 5
# Final Base: 60

# Base: 0, Num: 1
# Base: 2, Num: 2
# Base: 7, Num: 3
# Base: 17, Num: 4
# Base: 34, Num: 5
# Base: 60, Num: 6
# Base: 97, Num: 7
# Base: 147, Num: 8
# Base: 212, Num: 9
# Base: 294, Num: 10
# Final Base: 395

# Kudos! You've succesfully completed the challenge on reduce.
