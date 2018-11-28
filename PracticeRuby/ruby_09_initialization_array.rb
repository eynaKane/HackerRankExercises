# https://www.hackerrank.com/challenges/ruby-array-initialization/problem
require 'pry'

@_binding = binding
def show_output(p, b = @_binding)
  # rubocop:disable Security/Eval
  eval("
    local_variables.each do |v|
      if eval(v.to_s + \".object_id\") == " + p.object_id.to_s + "
        var = v.to_s
        val = eval(var)
        uniq_val = val.first ? val.first.to_s : 'nil'
        puts 'variable named ' + var + ' is defined!'
        puts var + ' variable belongs to the class `'\
          + val.class.to_s + '`!'
        puts var + ' is of size ' + val.size.to_s + '!'
        puts 'Element of the ' + var + ' is ' + uniq_val\
          + '!' unless val.size.zero?
      end
    end
  ", b)
  # rubocop:enable Security/Eval
end

array = []
array1 = [nil]
array2 = [10, 10]

show_output(array)
show_output(array1)
show_output(array2)

# ruby ruby_09_initialization_array.rb

# variable named array is defined!
# array variable belongs to the class `Array`!
# array is of size 0!
# variable named array1 is defined!
# array1 variable belongs to the class `Array`!
# array1 is of size 1!
# Element of the array1 is nil!
# variable named array2 is defined!
# array2 variable belongs to the class `Array`!
# array2 is of size 2!
# Element of the array2 is 10!
