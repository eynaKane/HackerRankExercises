# https://www.hackerrank.com/challenges/30-class-vs-instance/problem
class Person
  attr_accessor :age
  def initialize(initial_age)
    if initial_age < 0
      puts 'Age is not valid, setting age to 0.'
      initial_age = 0
    end

    @age = initial_age
  end

  def am_i_old?
    if @age < 13
      puts 'You are young.'
    elsif @age < 18
      puts 'You are a teenager.'
    else
      puts 'You are old.'
    end
  end

  def year_passes
    @age += 1
  end
end

T = gets.to_i

T.times do
  age = gets.to_i
  p = Person.new(age)
  p.am_i_old?

  3.times do
    p.year_passes
  end

  p.am_i_old?
  puts ''
end

# ruby day_04_young_or_old.rb
# 4
# -1

# Age is not valid, setting age to 0.
# You are young.
# You are young.

# 10

# You are young.
# You are a teenager.

# 16

# You are a teenager.
# You are old.

# 18

# You are old.
# You are old.
