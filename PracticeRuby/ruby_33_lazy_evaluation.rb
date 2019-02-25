# https://www.hackerrank.com/challenges/ruby-lazy/problem
require 'pry'

def prime?(number)
  return false if number == 1

  ctr = 2
  prime = true
  remainder = nil

  while remainder != 0 && ctr * ctr <= number
    remainder = number % ctr
    if remainder.zero?
      prime = false
      break
    end
    ctr += 1
  end

  prime
end

def palindrome?(number)
  number = number.to_s
  is_palindrome = true
  split_number = number.split('')

  (number.length / 2).times do
    if split_number.pop != split_number.shift
      is_palindrome = false
      break
    end
  end

  is_palindrome
end

prime_palindrome = lambda do |input|
  1.upto(Float::INFINITY).lazy.select do |number|
    palindrome?(number) && prime?(number)
  end.first(input)
end

input = gets.chomp.to_i
result = prime_palindrome.call(input)
puts '[' + result.join(', ') + ']'

# ruby ruby_33_lazy_evaluation.rb
# 6

# [2, 3, 5, 7, 11, 101]

# ruby ruby_33_lazy_evaluation.rb
# 15

# [2, 3, 5, 7, 11, 101, 131, 151, 181, 191, 313, 353, 373, 383, 727]
