# https://www.hackerrank.com/challenges/ruby-methods-introduction/problem
require 'pry'

def prime?(num)
  return false if num == 1

  ctr = 2
  prime = true
  remainder = nil

  while remainder != 0 && ctr * ctr <= num
    remainder = num % ctr
    if remainder.zero?
      prime = false
      break
    end
    ctr += 1
  end

  prime
end

def print_prime_result(num)
  if prime?(num)
    puts "#{num} is a Prime Number."
  else
    puts "#{num} is not a Prime Number."
  end
end

[3, 17, 22].each do |num|
  print_prime_result(num)
end

puts 'You have successfully completed the challenge.'

# ruby ruby_24_intro_method.rb

# 3 is a Prime Number.
# 17 is a Prime Number.
# 22 is not a Prime Number.
# You have successfully completed the challenge.
