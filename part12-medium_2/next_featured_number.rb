=begin

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

- input: an integer
- output: an integer

- goal: to return the next featured number greater than the argument
- rules:
  * I assume input is a positive integer
  * featured number -> odd
                    -> multiple of 7
                    -> digits occur exactly once
  * find the next feauted number
  * issue error message if there is not any
  * there is no featured number after 9_876_543_210 because at least one digit will occur more than once

- algorithm:
  * start a loop
    * increment input by 1
    * break if number is odd and divisible by 7
  * start another loop 
    return number if check if digits are unique
     - convert number to string
     - convert string to a char array
     - if this array is equal to its unique version return true
    increment number by 14 (not 7) to guarantee to obtain an odd number
    break if number reaches 9_876_543_210
  * print error message

=end

def digits_uniq?(num)
  digits = num.to_s.split('')
  digits == digits.uniq
end



def featured(number)
  loop do
    number += 1
    break if number.odd? && number % 7 == 0
  end

  loop do
    return number if digits_uniq?(number)
    number += 14
    break if number >= 9_876_543_210
  end

  puts "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
featured(9_999_999_999)