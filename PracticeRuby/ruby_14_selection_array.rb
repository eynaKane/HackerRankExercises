# https://www.hackerrank.com/challenges/ruby-array-selection/problem
def select_arr(arr)
  arr.select(&:odd?)
end

def reject_arr(arr)
  arr.reject { |a| (a % 3).zero? }
end

def delete_arr(arr)
  arr.delete_if { |a| a < 0 }
end

def keep_arr(arr)
  arr.keep_if { |a| a >= 0 }
end

arr = [-2, -1, 0, 1, 2, 3]
puts 'Initial Array: [' + arr.join(', ') + ']'

puts 'Correct! You have returned odd valued elements from the array!'
puts '[' + select_arr(arr).join(', ') + ']'

puts 'Correct! You have returned all numbers that are not divisible by 3!'
puts '[' + reject_arr(arr).join(', ') + ']'

puts 'Correct! You have deleted all the negative elements of the array!'
puts '[' + delete_arr(arr).join(', ') + ']'

puts 'Correct! You have retained all the positive elements of the array!'
puts '[' + keep_arr(arr).join(', ') + ']'

puts 'Final Array: [' + arr.join(', ') + ']'

# ruby ruby_14_selection_array.rb

# Initial Array: [-2, -1, 0, 1, 2, 3]
# Correct! You have returned odd valued elements from the array!
# [-1, 1, 3]
# Correct! You have returned all numbers that are not divisible by 3!
# [-2, -1, 1, 2]
# Correct! You have deleted all the negative elements of the array!
# [0, 1, 2, 3]
# Correct! You have retained all the positive elements of the array!
# [0, 1, 2, 3]
# Final Array: [0, 1, 2, 3]
