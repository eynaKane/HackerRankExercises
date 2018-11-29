# https://www.hackerrank.com/challenges/ruby-array-deletion/problem
def end_arr_delete(arr)
  arr.pop
end

def start_arr_delete(arr)
  arr.shift
end

def delete_at_arr(arr, index)
  arr.delete_at(index)
end

def delete_all(arr, val)
  arr.delete(val)
end

arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts 'Initial Array: [' + arr.join(', ') + ']'

end_arr_delete(arr)
puts 'Correct! You have deleted the last element from the array'

start_arr_delete(arr)
puts 'Correct! You have deleted the first element from the array'

delete_at_arr(arr, 3)
puts 'Correct! You have deleted the element at index 3 from the array'

delete_all(arr, 2)
puts 'Correct! You have deleted all occurrences of 2 from the array'

puts 'Final Array: [' + arr.join(', ') + ']'

# ruby ruby_13_deletion_array.rb

# Initial Array: [1, 2, 3, 4, 5, 6, 7, 8]
# Correct! You have deleted the last element from the array
# Correct! You have deleted the first element from the array
# Correct! You have deleted the element at index 3 from the array
# Correct! You have deleted all occurrences of 2 from the array
# Final Array: [3, 4, 6, 7]
