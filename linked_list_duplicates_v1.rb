# https://www.hackerrank.com/challenges/30-linked-list-deletion/problem
require 'pry'

# Node class
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

# Solution class
class Solution
  def remove_duplicates(head)
    new_node = Node.new(head.data)
    return new_node unless head.next

    node = head
    next_node = node.next
    array_of_uniq_data = [node.data]

    until next_node.nil?
      unless array_of_uniq_data.include?(next_node.data)
        array_of_uniq_data << next_node.data

        temp = new_node
        temp = temp.next until temp.next.nil?
        temp.next = Node.new(next_node.data)
      end

      node = next_node
      next_node = node.next
    end

    new_node
  end

  def insert(head, value)
    p = Node.new(value)

    if head.nil?
      head = p
    elsif head.next.nil?
      head.next = p
    else
      current = head
      current = current.next until current.next.nil?
      current.next = p
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

T.times do
  data = gets.to_i
  head = mylist.insert(head, data)
end

head = mylist.remove_duplicates(head)

mylist.display(head)

puts

# ruby linked_list_duplicates_v1.rb
# 6
# 1
# 2
# 2
# 3
# 3
# 4

# 1 2 3 4

# ruby linked_list_duplicates_v1.rb
# 5
# 2
# 3
# 3
# 4
# 6

# 2 3 4 6

# ruby linked_list_duplicates_v1.rb
# 20
# 3
# 9
# 9
# 11
# 11
# 11
# 11
# 89
# 89
# 100
# 100
# 101
# 102
# 103
# 108
# 200
# 250
# 250
# 250
# 250

# 3 9 11 89 100 101 102 103 108 200 250
