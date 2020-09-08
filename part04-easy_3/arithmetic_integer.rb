=begin

Arithmetic Integer

Write a program that prompts the user for two positive integers, 
and then prints the results of the following operations on those two numbers: 
addition, subtraction, product, quotient, remainder, and power. 
Do not worry about validating the input.

Example

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

1. Understanding the Problem:

- questions:
  - Since inputs are integers, I will perform an integer division.
  - I will not validate input.

- input: 2 positive integers
- output: operation results on inputs

- rules:
  explicit:
    - get two integer inputs from user
    - do calculations
    - display result

2. Examples / Test Cases: as given in the problem statement

3. Data Structure: number

4. Algortihm:

- prompt user for the first number
- convert input to integer and save it into "num1"
- prompt user for the second number
- convert input to integer and save it into "num2"
- display result using puts and string interpolation

5. Code:

=end

puts "==> Enter the first number:"
num1 = gets.to_i

puts "==> Enter the second number:"
num2 = gets.to_i

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"