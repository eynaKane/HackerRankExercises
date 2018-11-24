# https://www.hackerrank.com/challenges/ruby-tutorial-object-methods/problem
def odd_or_even(number)
  number.even?
end

(0...gets.to_i).each do
  puts odd_or_even(gets.to_i)
end

# ruby ruby_02_object_methods.rb
# 5
# 2

# true

# 4

# true

# 3

# false

# 5

# false

# 8

# true
