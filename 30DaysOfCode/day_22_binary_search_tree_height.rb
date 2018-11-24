# https://www.hackerrank.com/challenges/30-binary-search-trees/problem
require 'pry'

# Node class
class Node
  attr_accessor :left, :right, :data

  def initialize(data)
    @left = @right = nil
    @data = data
  end
end

# Solution class
class Solution
  def insert(root, data)
    return Node.new(data) if root.nil?

    if data <= root.data
      cur = insert(root.left, data)
      root.left = cur
    else
      cur = insert(root.right, data)
      root.right = cur
    end

    root
  end

  def get_height(root)
    return -1 if root.nil?

    left_depth = get_height(root.left)
    right_depth = get_height(root.right)

    if left_depth > right_depth
      left_depth + 1
    else
      right_depth + 1
    end
  end
end

my_tree = Solution.new

root = nil

T = gets.to_i

T.times do
  data = gets.to_i
  root = my_tree.insert(root, data)
end

height = my_tree.get_height(root)

puts "The height of Binary Search Tree is #{height}"

# ruby day_22_binary_search_tree_height.rb 
# 7
# 3
# 5
# 2
# 1
# 4
# 6
# 7

# The height of Binary Search Tree is 3
