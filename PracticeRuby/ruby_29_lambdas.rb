# https://www.hackerrank.com/challenges/ruby-lambdas/problem

# Write a lambda which takes an integer and square it
square = ->(a) { a**2 }

# Write a lambda which takes an integer and increment it by 1
plus_one = ->(a) { a + 1 }

# Write a lambda which takes an integer and multiply it by 2
multiply_by_two = ->(a) { a * 2 }

# Write a lambda which takes two integers and adds them
adder = ->(a, b) { a + b }

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(a) { a.values }

input_number_one = gets.to_i
input_number_two = gets.to_i
# rubocop:disable Security/Eval
input_hash = eval(gets)
# rubocop:enable Security/Eval

a = square.call(input_number_one)
b = plus_one.call(input_number_two)
c = multiply_by_two.call(input_number_one)
d = adder.call(input_number_one, input_number_two)
e = values_only.call(input_hash)

puts "\nRESULT:"
puts "Square of #{input_number_one} is #{a}"
puts "#{input_number_two} plus 1 is #{b}"
puts "#{input_number_one} times 2 is #{c}"
puts "Sum of #{input_number_one} and #{input_number_two} is #{d}"
puts "Values of hash #{input_hash} are #{e}"

# ruby ruby_29_lambdas.rb
# 11
# 12
# { font_size: 10, font_family: "Arial" }

# RESULT:
# Square of 11 is 121
# 12 plus 1 is 13
# 11 times 2 is 22
# Sum of 11 and 12 is 23
# Values of hash {:font_size=>10, :font_family=>"Arial"} are [10, "Arial"]

# ruby ruby_29_lambdas.rb
# 2
# 3
# {a: 1, b: 2}

# RESULT:
# Square of 2 is 4
# 3 plus 1 is 4
# 2 times 2 is 4
# Sum of 2 and 3 is 5
# Values of hash {:a=>1, :b=>2} are [1, 2]
