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
    arr = [head]
    uniq_arr = []
    node = arr.shift

    until node.nil?
      uniq_arr << node.data
      arr << node.next
      node = arr.shift
    end

    uniq_arr.uniq
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

  def display(arr)
    arr.each do |a|
      print a, ' '
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

arr = mylist.remove_duplicates(head)

mylist.display(arr)

puts

# ruby linked_list_duplicates_v2.rb
# 5
# 2
# 3
# 3
# 4
# 6

# 2 3 4 6

# ruby linked_list_duplicates_v2.rb
# 6
# 1
# 2
# 2
# 3
# 3
# 4

# 1 2 3 4

# ruby linked_list_duplicates_v2.rb
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
