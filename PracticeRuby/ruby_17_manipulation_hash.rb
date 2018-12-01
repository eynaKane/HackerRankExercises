# https://www.hackerrank.com/challenges/ruby-hash-add-del-sel/problem
require 'pry'

def insert_pair(hash, key, value)
  hash.store(key, value)

  puts "\nCorrect! You've added the key-value pair "\
    + key.to_s + ', ' + value.to_s + ' to `hackerrank`.'

  print_hash(hash)
end

def retain_int_keys(hash)
  hash.keep_if do |k, _|
    k.is_a? Integer
  end

  puts "\nCorrect! Only integer keys are retained."

  print_hash(hash)
end

def remove_even_keys(hash)
  hash.delete_if do |k, _|
    k.even? if k.is_a? Integer
  end

  puts "\nCorrect! Even valued pairs are deleted."

  print_hash(hash)
end

def print_hash(hash)
  hash.each do |key, value|
    puts '[' + key.to_s + ': ' + value.to_s + ']'
  end
end

hackerrank = { 1 => 'one', 2 => 'two', 'three' => 3, 'four' => 4 }
puts "\nOriginal Hash:"
print_hash(hackerrank)

insert_pair(hackerrank, 543_121, 100)
retain_int_keys(hackerrank)
remove_even_keys(hackerrank)

# ruby ruby_17_manipulation_hash.rb

# Original Hash:
# [1: one]
# [2: two]
# [three: 3]
# [four: 4]

# Correct! You've added the key-value pair 543121, 100 to `hackerrank`.
# [1: one]
# [2: two]
# [three: 3]
# [four: 4]
# [543121: 100]

# Correct! Only integer keys are retained.
# [1: one]
# [2: two]
# [543121: 100]

# Correct! Even valued pairs are deleted.
# [1: one]
# [543121: 100]
