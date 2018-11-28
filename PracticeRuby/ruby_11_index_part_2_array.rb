# https://www.hackerrank.com/challenges/ruby-array-index-ii/problem
require 'pry'

def element_at(arr, index)
  result = arr[index]
  puts "Correct! Element at #{index} is #{result}!"
end

def inclusive_range(arr, start_pos, end_pos)
  result = arr[start_pos..end_pos]
  puts "Correct! The elements between the index #{start_pos} "\
    "and #{end_pos} is #{result}!"
end

def non_inclusive_range(arr, start_pos, end_pos)
  result = arr[start_pos...end_pos]
  puts "Correct! The elements between the index #{start_pos} "\
    "and #{end_pos} (not inclusive) is #{result}!"
end

def start_and_length(arr, start_pos, length)
  result = arr[start_pos, length]
  puts "Correct! The #{length} elements starting from #{start_pos} "\
    "are #{result}!"
end

def neg_pos(arr, index)
  result = arr[-index]
  puts "Correct! The element at #{index} from the end of the array "\
    "is #{result}"
end

def first_element(arr)
  result = arr.first
  puts "Correct! The first element of the array is #{result}!"
end

def last_element(arr)
  result = arr.last
  puts "Correct! The last element of the array is #{result}!"
end

def first_n(arr, n)
  result = arr.take(n)
  puts "Correct! The first #{n} elements of the array are #{result}!"
end

def drop_n(arr, n)
  result = arr.drop(n)
  puts "Correct! The elements of the array after dropping #{n} elements "\
  "are #{result}!"
end

arr = [9, 7, 6, 5, 4, 6, 7, 1, 2, 3]
arr_size = arr.size
arr_class = arr.first.class.to_s + 's'

puts "Correct! Elements of the Array variable are #{arr_size} in number"
puts "Correct! All the elements of the Array are #{arr_class}!"
neg_pos(arr, 2)
first_element(arr)
last_element(arr)
first_n(arr, 4)
drop_n(arr, 5)

# rubocop:disable Metrics/LineLength
# ruby ruby_11_index_part_2_array.rb

# Correct! Elements of the Array variable are 10 in number
# Correct! All the elements of the Array are Integers!
# Correct! The element at 2 from the end of the array is 2
# Correct! The first element of the array is 9!
# Correct! The last element of the array is 3!
# Correct! The first 4 elements of the array are [9, 7, 6, 5]!
# Correct! The elements of the array after dropping 5 elements are [6, 7, 1, 2, 3]!
# rubocop:enable Metrics/LineLength
