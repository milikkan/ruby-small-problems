=begin

Odd
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. You may assume that the argument is 
a valid integer value.

Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

1. Understanding the Problem

- input: an integer
- output: true/false
- rules:
   explicit:
   - input is a valid integer
   - the method will return true if the absolute value of the input is odd
   - not allowed to use Integer#odd? and Integer#even? methods
   - if an integer is divided by two and leaves 1 as a remainder, it is odd

2. Examples / Test Cases: listed in the problem description

3. Data Structure: number

4. Algorithm

  - define a method "is_odd?" that takes an integer argument called "num"
  - apply the modulo operator to "num" and 2 (num % 2)
  - compare the result of the operation with the number "1"
  - return the result of the comparison 
    
5. Code

=end

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true