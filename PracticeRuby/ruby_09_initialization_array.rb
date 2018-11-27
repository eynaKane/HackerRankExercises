# https://www.hackerrank.com/challenges/ruby-array-initialization/problem
require 'pry'

array = []
array1 = [nil]
array2 = [10, 10]

@_binding = binding
def show_output(p, b = @_binding)
  # rubocop:disable Security/Eval
  eval("
    local_variables.each do |v|
      if eval(v.to_s + \".object_id\") == " + p.object_id.to_s + "
        puts 'variable named ' + v.to_s + ' is defined!'
        puts v.to_s + ' variable belongs to the class `'\
          + eval(v.to_s).class.to_s + '`!'
        puts v.to_s + ' is of size ' + eval(v.to_s).count.to_s + '!'
      end
    end
  ", b)
  # rubocop:enable Security/Eval
end

show_output(array)
show_output(array1)
show_output(array2)

# variable named array is defined!
# array variable belongs to the class `Array`!
# array variable is of size 0!
# variable named array_1 is defined!
# array_1 variable belongs to the class `Array`!
# array_1 variable is of size 1!
# Element of the array_1 is nil!
# variable named array_2 is defined!
# array_1 variable belongs to the class `Array`!
# array_2 variable is of size 2!
# Each element of array_2 is 10!
