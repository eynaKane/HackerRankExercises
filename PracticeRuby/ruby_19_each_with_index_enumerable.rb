# https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem
require 'pry'

def skip_animals(animals, skip)
  puts "\nOriginal Animal List:"
  print_array(animals)
  puts 'Original Animal List With Index:'
  print_array_with_index(animals)
  puts "Skipping #{skip} animals..."

  last_index = animals.size - 1
  new_animal_list = animals[skip..last_index]
  puts "\nNew Animal List:"
  print_array(new_animal_list)

  puts 'New Animal List With Index:'
  print_array_with_index(new_animal_list, skip)
end

def print_array(array)
  puts '[' + array.join(', ') + ']'
end

def print_array_with_index(array, skip = 0)
  arr = []

  array.each_with_index do |value, index|
    arr << '"' + (index + skip).to_s + ':' + value.to_s + '"'
  end

  puts '[' + arr.join(', ') + ']'
end

animals = %w[bat cow jaguar panda tiger deer]
skip = 3
skip_animals(animals, skip)

animals = %w[leopard bear fox wolf dog cat]
skip = 0
skip_animals(animals, skip)

puts "\n" + 'Correct! You have a good understanding of Ruby.'

# ruby ruby_19_each_with_index_enumerable.rb

# Original Animal List:
# [bat, cow, jaguar, panda, tiger, deer]
# Original Animal List With Index:
# ["0:bat", "1:cow", "2:jaguar", "3:panda", "4:tiger", "5:deer"]
# Skipping 3 animals...

# New Animal List:
# [panda, tiger, deer]
# New Animal List With Index:
# ["3:panda", "4:tiger", "5:deer"]

# Original Animal List:
# [leopard, bear, fox, wolf, dog, cat]
# Original Animal List With Index:
# ["0:leopard", "1:bear", "2:fox", "3:wolf", "4:dog", "5:cat"]
# Skipping 0 animals...

# New Animal List:
# [leopard, bear, fox, wolf, dog, cat]
# New Animal List With Index:
# ["0:leopard", "1:bear", "2:fox", "3:wolf", "4:dog", "5:cat"]

# Correct! You have a good understanding of Ruby.
