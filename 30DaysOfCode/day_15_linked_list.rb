# https://www.hackerrank.com/challenges/30-linked-list/problem
require 'pry'

# Initialize node
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

# Add node to linked list
class Solution
  def insert(head, value)
    if head.nil?
      head = Node.new(value)
    elsif head
      temp = head

      temp = temp.next until temp.next.nil?

      temp.next = Node.new(value)
    end

    head
  end

  def display(head)
    current = head

    while current
      print current.data, ' '
      current = current.next
    end
  end
end

mylist = Solution.new

head = nil

T = gets.to_i

(1..T).each do
  data = gets.to_i
  head = mylist.insert(head, data)
end

mylist.display(head)

puts

# ruby day_15_linked_list.rb
# 4
# 2
# 3
# 4
# 1

# 2 3 4 1
