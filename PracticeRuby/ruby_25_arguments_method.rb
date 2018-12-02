# https://www.hackerrank.com/challenges/ruby-methods-arguments/problem
require 'pry'

def remove_characters_from_beginning(array, start = 1)
  array.drop(start)
end

def print_array(array)
  puts '[' + array.join(', ') + ']'
end

array = [1, 2, 3, 4, 5, 0]
print 'Original Array: '
print_array(array)

tests = [5, 3, 1, 0, nil]

tests.each do |test|
  if test.nil? || test == 1
    print "\nDropping first value in the array\nResult: "
    result = remove_characters_from_beginning(array)
  elsif test.zero?
    print "\nDropping #{test} values in the array\nResult: "
    result = array
  else
    print "\nDropping first #{test} values in the array\nResult: "
    result = remove_characters_from_beginning(array, test)
  end

  print_array(result)
end

puts 'Yay! You have successfully completed your challenge!'

# ruby ruby_25_arguments_method.rb

# Original Array: [1, 2, 3, 4, 5, 0]

# Dropping first 5 values in the array
# Result: [0]

# Dropping first 3 values in the array
# Result: [4, 5, 0]

# Dropping first value in the array
# Result: [2, 3, 4, 5, 0]

# Dropping 0 values in the array
# Result: [1, 2, 3, 4, 5, 0]

# Dropping first value in the array
# Result: [2, 3, 4, 5, 0]
# Yay! You have successfully completed your challenge!
