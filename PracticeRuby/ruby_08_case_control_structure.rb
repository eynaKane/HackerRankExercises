# https://www.hackerrank.com/challenges/ruby-case/problem
require 'pry'
require 'active_support/inflector'

class Hacker; end

class Submission; end

class TestCase; end

class Contest; end

def identify_class(obj)
  type = obj.class.to_s
  answer = case type
           when 'Hacker', 'Submission', 'TestCase', 'Contest'
             "It's a #{type}!"
           else
             'It\'s an unknown model'
           end

  puts answer
end

num = gets.to_i
types = []

num.times do
  types << gets.chomp
end

types.each do |type|
  begin
    identify_class(type.constantize.new)
  rescue NameError
    identify_class('Unknown')
  end
end

# ruby ruby_08_case_control_structure.rb
# 10
# Hacker
# Submission
# TestCase
# Submission
# Hacker
# Hacker
# Submission
# TestCase
# Contest
# Hacker

# It's a Hacker!
# It's a Submission!
# It's a TestCase!
# It's a Submission!
# It's a Hacker!
# It's a Hacker!
# It's a Submission!
# It's a TestCase!
# It's a Contest!
# It's a Hacker!

# ruby ruby_08_case_control_structure.rb
# 3
# Abc
# Hacker
# Hey

# It's an unknown model
# It's a Hacker!
# It's an unknown model
