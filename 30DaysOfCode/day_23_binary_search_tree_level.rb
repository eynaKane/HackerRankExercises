# https://www.hackerrank.com/challenges/30-binary-trees/problem
require 'pry'

# Node Class
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

  def level_order(root)
    queue = []
    queue << root

    while queue.any?
      root = queue.shift

      print root.data.to_s + ' ' if root

      queue << root.left if root.left
      queue << root.right if root.right
    end

    puts
  end
end

my_tree = Solution.new

root = nil

T = gets.to_i

T.times do
  data = gets.to_i
  root = my_tree.insert(root, data)
end

my_tree.level_order(root)

# ruby day_23_binary_search_tree_level.rb
# 6
# 3
# 5
# 4
# 7
# 2
# 1

# 3 2 5 1 4 7

# ruby day_23_binary_search_tree_level.rb
# 13
# 25
# 39
# 12
# 19
# 9
# 23
# 55
# 31
# 60
# 35
# 41
# 70
# 90

# 25 12 39 9 19 31 55 23 35 41 60 70 90
