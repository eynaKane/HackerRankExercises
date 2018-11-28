# https://www.hackerrank.com/challenges/ruby-array-index-i/problem
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

arr = [9, 5, 1, 5, 4, 6, 7, 1, 2, 3]
arr_size = arr.size
arr_class = arr.first.class.to_s + 's'

puts "Correct! Elements of the Array variable are #{arr_size} in number"
puts "Correct! All the elements of the Array are #{arr_class}!"
element_at(arr, 8)
inclusive_range(arr, 4, 9)
non_inclusive_range(arr, 3, 8)
start_and_length(arr, 3, 6)

# rubocop:disable Metrics/LineLength
# ruby ruby_10_index_part_1_array.rb

# Correct! Elements of the Array variable are 10 in number
# Correct! All the elements of the Array are Integers!
# Correct! Element at 8 is 2!
# Correct! The elements between the index 4 and 9 is [4, 6, 7, 1, 2, 3]!
# Correct! The elements between the index 3 and 8 (not inclusive) is [5, 4, 6, 7, 1]!
# Correct! The 6 elements starting from 3 are [5, 4, 6, 7, 1, 2]!
# rubocop:enable Metrics/LineLength
