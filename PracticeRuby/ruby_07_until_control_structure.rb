# https://www.hackerrank.com/challenges/ruby-infinite-loop/problem
require 'pry'

# Coder class
class Coder
  def initialize(name, rank)
    @coder = name
    @rank = rank
  end

  def practice
    @rank -= 1
  end

  def oh_one?
    @rank == 1
  end
end

print 'Name: '
name = gets.chomp
print 'Current Rank: '
rank = gets.to_i

coder = Coder.new(name, rank)

until coder.oh_one?
  puts "#{name}, you're still not O(1)."
  coder.practice
end

puts "\n#{name}, congrats! You're finally O(1)!"

# ruby ruby_07_until_control_structure.rb
# Name: Eyna
# Current Rank: 10

# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).
# Eyna, you're still not O(1).

# Eyna, congrats! You're finally O(1)!

# ruby ruby_07_until_control_structure.rb
# Name: Joey
# Current Rank: 2

# Joey, you're still not O(1).

# Joey, congrats! You're finally O(1)!

# ruby ruby_07_until_control_structure.rb
# Name: Paul
# Current Rank: 1

# Paul, congrats! You're finally O(1)!
