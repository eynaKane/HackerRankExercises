# https://www.hackerrank.com/challenges/30-inheritance/problem
require 'pry'

# Initializes and prints personal info
class Person
  def initialize(first_name, last_name, id)
    @first_name = first_name
    @last_name = last_name
    @id = id
  end

  def print_person
    print('Name: ', @last_name, ', ' + @first_name, "\nID: ", @id)
  end
end

# Initializes, prints student info and grade
class Student < Person
  def initialize(first_name, last_name, id, scores)
    @first_name = first_name
    @last_name = last_name
    @id = id
    @scores = scores
  end

  def calculate
    average = (@scores.sum / @scores.count.to_f).round

    if average < 40
      'T'
    elsif average < 55
      'D'
    elsif average < 70
      'P'
    elsif average < 80
      'A'
    elsif average < 90
      'E'
    else
      'O'
    end
  end
end

input = gets.split

first_name = input[0]

last_name = input[1]

id = input[2].to_i

scores = gets.strip.split.map!(&:to_i)

s = Student.new(first_name, last_name, id, scores)

s.print_person

print("\nGrade: " + s.calculate)

# ruby inheritance.rb
# Heraldo Memelli 8135627
# 100 80

# Name: Memelli, Heraldo
# ID: 8135627
# Grade: O
