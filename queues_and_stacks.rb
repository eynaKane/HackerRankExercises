# https://www.hackerrank.com/challenges/30-queues-stacks/problem
require 'pry'

# Solution class
class Solution
  attr_accessor :stack, :queue

  def initialize
    @stack = []
    @queue = []
  end

  def push_character(c)
    stack << c
  end

  def enqueue_character(c)
    queue << c
  end

  def pop_character
    stack.pop
  end

  def dequeue_character
    queue.shift
  end
end

solution = Solution.new

input = gets.chomp

input.split('').each do |c|
  solution.push_character c

  solution.enqueue_character c
end

is_palindrome = true

(input.length / 2).times do
  if solution.pop_character != solution.dequeue_character
    is_palindrome = false
    break
  end
end

if is_palindrome
  puts "The word, #{input}, is a palindrome."
else
  puts "The word, #{input}, is not a palindrome."
end

# ruby queues_and_stacks.rb
# racecar

# The word, raccar, is a palindrome.

# ruby queues_and_stacks.rb
# caca

# The word, caca, is not a palindrome.
