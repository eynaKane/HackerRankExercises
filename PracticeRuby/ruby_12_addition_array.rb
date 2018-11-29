# https://www.hackerrank.com/challenges/ruby-array-addition/problem
def end_arr_add(arr, element)
  arr.push(element)
  arr
end

def begin_arr_add(arr, element)
  arr.unshift(element)
  arr
end

def index_arr_add(arr, index, element)
  arr.insert(index, element)
  arr
end

def index_arr_multiple_add(arr, index)
  arr.insert(index, 8, 88)
end

arr = [1, 2, 3]
puts 'Initial Array: [' + arr.join(', ') + ']'

end_arr_add(arr, 10)
puts 'Element 10 is inserted to the end of the array!'

begin_arr_add(arr, 20)
puts 'Element 20 is inserted into the beginning of the array!'

index_arr_add(arr, 1, 30)
puts 'Element 30 is inserted at position 1 of the array!'

index_arr_multiple_add(arr, 2)
puts 'Correct! You\'ve added 2 elements (8, 88) at position 2 of the array!'

puts 'Final Array: [' + arr.join(', ') + ']'

# ruby ruby_12_addition_array.rb

# Initial Array: [1, 2, 3]
# Element 10 is inserted to the end of the array!
# Element 20 is inserted into the beginning of the array!
# Element 30 is inserted at position 1 of the array!
# Correct! You've added 2 elements (8, 88) at position 2 of the array!
# Final Array: [20, 30, 8, 88, 1, 2, 3, 10]
