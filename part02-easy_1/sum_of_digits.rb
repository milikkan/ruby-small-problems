=begin

Sum of Digits

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

1. Understanding the Problem:

- questions:
  How do underscores effect the input? Can I use the input like normal integers then?

- input: a positive integer
- output: an integer

- rules
  explicit:
    - individual digits of the input will be added together to het the output
    - input may include underscores
    - underscores are just for readability, the integer is stored normally

2. Examples / Test Cases: given in the problem statement

3. Data Structure: number / string

4. Algorithm:

- define method "sum" that accepts "number" as the argument
- convert number to string and then convert this string to an array of characters, 
    assign the result to "str_digits" array
- sum the numbers of the array using Array#sum
  - pass sum method a block in which the each string digit is converted to integer before addition
- return the sum

5. Code:

=end

def sum(number)
  str_digits = number.to_s.chars
  str_digits.sum { |digit| digit.to_i }
  
  # another way
  # str_digits.sum(&:to_i)

  # another way
  # str_digits.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45