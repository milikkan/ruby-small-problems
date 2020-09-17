=begin

Further Exploration

Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.

=end

def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('abcd') == 'bcda'
p rotate_string('x') == 'x'
p rotate_string('') == ''
p rotate_string('hello world') == 'ello worldh'

def rotate_integer(number)
  rotate_string(number.to_s).to_i
end

p rotate_integer(1234) == 2341
p rotate_integer(0) == 0
p rotate_integer(-42) == -24