# https://www.hackerrank.com/challenges/ruby-methods-variable-arguments/problem
require 'pry'
require 'faker'

def full_name(first_name, *middle_name, last_name)
  full_name = middle_name
  full_name.unshift(first_name)
  full_name.push(last_name)

  full_name.join(' ')
end

def print_name(first_name, *middle_name, last_name, full_name)
  puts "First:\t" + first_name
  puts "Middle:\t" + middle_name.join(' ')
  puts "Last:\t" + last_name

  puts 'Full Name: ' + full_name
  puts
end

# Normal Name
first_name = Faker::Name.first_name
middle_name = Faker::Name.middle_name
last_name = Faker::Name.last_name
full_name = full_name(first_name, middle_name, last_name)
print_name(first_name, middle_name, last_name, full_name)

# No Middle Name
first_name = Faker::Name.first_name
last_name = Faker::Name.last_name
full_name = full_name(first_name, last_name)
print_name(first_name, last_name, full_name)

# Three Middle Names
first_name = Faker::Name.first_name
mid_name1 = Faker::Name.middle_name
mid_name2 = Faker::Name.middle_name
mid_name3 = Faker::Name.middle_name
last_name = Faker::Name.last_name
full_name = full_name(first_name, mid_name1, mid_name2, mid_name3, last_name)
print_name(first_name, mid_name1, mid_name2, mid_name3, last_name, full_name)

# ruby ruby_26_variable_args_method.rb

# First:  Mona
# Middle: So
# Last: Stracke
# Full Name: Mona So Stracke

# First:  Claretta
# Middle:
# Last: Durgan
# Full Name: Claretta Durgan

# First:  Mauricio
# Middle: Carylon Dara Maggie
# Last: Dickinson
# Full Name: Mauricio Carylon Dara Maggie Dickinson
