=begin

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

- input: integer (positive or 0)
- output: string

- rules:
  * input will be 0 or positive
  * convert the integer to string by analzing and manipulating the number
  * do not use to_s, String() or format methods

- algorithm:
  1. build a hash to look up the string representations of digits 0-9
  2. seperate the number into its digits and save the digits in an array
     a. apply divmod on the number
     b. check if the first element of the resulting array is 0.
        - add the second element of the result array to the digits array
        - if the first element is not 0, 
            assign first element to the number (to be able to appy divmod on this new number)
            repeat step 2.a
        - if it is 0
            stop  
  3. reverse digits array
  4. map digits array to the string representations of the digits.
  4. join the array into a string

- example:
  * 5000 -> 5000.divmod(10) -> [500, 0] -> digits = [0]
  *         500.divmod(10) -> [50, 0] -> digits = [0, 0]
  *         50.divmod(10) -> [5, 0] -> digits = [0, 0, 0]
  *         5.divmod(10) -> [0, 5] -> digits = [0, 0, 0, 5]    
=end 

def generate_key
  result = {}
  str = "0123456789"
  (0..9).each { |num| result[num] = str[num] }
  result
end

def seperate_into_digits(num)
  digits = []
  loop do
    result, remainder = num.divmod(10)
    digits << remainder
    break digits if result == 0
    num = result
  end
end

def integer_to_string(num)
  hsh = generate_key
  digits = seperate_into_digits(num)
  digits.reverse.map { |digit| hsh[digit] }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'