=begin

Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

- input: 2 numbers (number, n)
- output: a number

- goal: to rotate last n digits of the number argument
- rules:
  * last n digit will be rotated once
  * 0 and 1 values for n will have no change on the number
  * use rotate_array method from previous exercise
  * n is always positive

- algorithm:
  * convert number to string
  * slice the string starting at -n and at the length of n -- slice!(-n, n)
  * convert sliced string to array and pass it into rotate_array method as argument
  * concatenate the string with the return value of rotate_array method
  * convert result to int and return

=end

def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

def rotate_rightmost_digits(number, n)
  num_str = number.to_s
  rotation_part = num_str.slice!(-n, n)
  (num_str + rotate_array(rotation_part.chars).join).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917