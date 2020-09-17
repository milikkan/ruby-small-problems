=begin

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

- input: a number
- output: a number

- goal: to return the naximum rotation
- rules:
  * max.rotation is reached when you continuously rotate the number fixing one more digit each time and reaching a point where you cannot change the number anymore
  * use rotate_rightmost_digits method from previous exercise
  * drop leading zeros (if any) after the rotation

- examples:
  * 735291 -> fix 0 digits -> 352917
           -> fix 1 digit  -> 329175
           -> fix 2 digits   -> 321759  
           -> fix 3 digits    -> 321597
          -> fix 4 digits    -> 321579 
           -> fix 5 digits     -> 1 digit left -> max.rotation reached
             
  * 35 -> rotate -> 53 -> fix first digit -> 1 digit left -> max.rotation reached

  * 105 -> rotate -> 051 -> fix first digit -> 015
                         -> fix 2 digits -> 1 digit left - max.

- algorithm:
  * calculate input's digit size and assign to size variable
  * start a loop that counts from size downto 2
    * call rotate_rightmost_digits method passing in input and current loop index
    * assign result back to input
  * return input

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

def max_rotation(number)
  size = number.digits.size
  size.downto(2) do |idx|
    number = rotate_rightmost_digits(number, idx)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845