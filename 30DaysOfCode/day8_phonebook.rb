# https://www.hackerrank.com/challenges/30-dictionaries-and-maps/problem
require 'json'
require 'stringio'
require 'timeout'

n = gets.to_i

phonebook = {}

n.times do
  entry = gets.rstrip.split(' ')
  phonebook[entry[0]] = entry[1].to_i
end

names = []

input = ''

while input
  begin
    Timeout.timeout(5) { input = gets.rstrip }
  rescue Timeout::Error
    input = nil
  end

  names << input if input
end

names.each do |name|
  number = phonebook[name]

  if number
    puts "#{name} = #{number}"
  else
    puts 'Not found'
  end
end

ruby day8_phonebook.rb
# 3
# sam 99912222
# tom 11122222
# harry 12299933
# sam
# edward
# harry

# sam = 99912222
# Not found
# harry = 12299933
