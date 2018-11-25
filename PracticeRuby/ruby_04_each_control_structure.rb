# https://www.hackerrank.com/challenges/ruby-tutorial-each/problem
require 'pry'

# User class
class User
  def initialize(name, score)
    @name = name
    @score = score
  end

  def increment_score_by_10
    temp = @score
    @score += 10
    puts "#{@name} - score updated from #{temp} to #{@score}\n"
  end
end

users = [
  { name: 'Eyna', score: 0 },
  { name: 'Joey', score: 10 },
  { name: 'Paul', score: 20 }
]

users.map do |u|
  user = User.new(u[:name], u[:score])
  user.increment_score_by_10
end

# ruby ruby_04_each_control_structure.rb
# Eyna - score updated from 0 to 10
# Joey - score updated from 10 to 20
# Paul - score updated from 20 to 30
