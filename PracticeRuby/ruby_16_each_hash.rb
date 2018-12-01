# https://www.hackerrank.com/challenges/ruby-hash-method-each/problem
require 'pry'

first_hash = { a: [1, 1], b: [2, 10], c: [3, 'some_string'] }

ctr = gets.to_i
input_hash = {}

ctr.times do
  pair = gets.split
  input_hash[pair.first] = pair.last
end

puts "\nKey-Value Pairs:\n"
first_hash.each do |key, value|
  puts '[' + key.to_s + ': ' + value.first.to_s + ']'
end

first_hash.each do |key, value|
  puts '[' + key.to_s + ': ' + value.last.to_s + ']'
end

input_hash.each do |key, value|
  puts '[' + key.to_s + ': ' + value.to_s + ']'
end

# ruby ruby_16_each_hash.rb
# 6
# 1 harry
# 2 potter
# 3 stephen
# 4 silvia
# 5 amelia
# 6 emilia

# Key-Value Pairs:
# [a: 1]
# [b: 2]
# [c: 3]
# [a: 1]
# [b: 10]
# [c: some_string]
# [1: harry]
# [2: potter]
# [3: stephen]
# [4: silvia]
# [5: amelia]
# [6: emilia]

# ruby ruby_16_each_hash.rb
# 4
# hacker id
# submission code
# testcase aws
# shard submission_id

# Key-Value Pairs:
# [a: 1]
# [b: 2]
# [c: 3]
# [a: 1]
# [b: 10]
# [c: some_string]
# [hacker: id]
# [submission: code]
# [testcase: aws]
# [shard: submission_id]
