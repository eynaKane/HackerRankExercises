# https://www.hackerrank.com/challenges/30-abstract-classes/problem
# Base class for MyBook
class Book
  attr_accessor :title
  attr_accessor :author

  def initialize
    raise 'You cannot instantiate an abstract class.'
  end

  def display
    raise 'You must override this method in your implementing class.'
  end
end

# Prints book details
class MyBook < Book
  attr_accessor :price

  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  def display
    puts "Title: #{title}"
    puts "Author: #{author}"
    puts "Price: #{price}"
  end
end

title = gets
author = gets
price = gets

new_novel = MyBook.new(title, author, price)
new_novel.display

# ruby abstract_classes.rb
# The Alchemist
# Paulo Coelho
# 248

# Title: The Alchemist
# Author: Paulo Coelho
# Price: 248
