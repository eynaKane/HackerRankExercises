# https://www.hackerrank.com/challenges/ruby-tutorial-each/problem
require 'pry'

# User class
class User
  def initialize(name, score, admin)
    @name = name
    @score = score
    @admin = admin
  end

  def increment_score_by_10
    temp = @score
    @score += 10
    puts "#{@name}: Non-Admin - Score updated from #{temp} to #{@score}\n"
  end

  def admin?
    @admin
  end
end

users = [
  { name: 'Eyna', score: 0, admin: true },
  { name: 'Joey', score: 10, admin: false },
  { name: 'Paul', score: 20, admin: false }
]

users.map do |u|
  user = User.new(u[:name], u[:score], u[:admin])
  user.increment_score_by_10 unless user.admin?
end

# ruby ruby_05_unless_control_structure.rb
# Joey: Non-Admin - Score updated from 10 to 20
# Paul: Non-Admin - Score updated from 20 to 30
