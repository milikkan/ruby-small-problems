=begin

Sum or Product of Consecutive Integers

Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

1. Understanding the Problem:

- questions:
  Should I validate input? (program needs a positive integer, than 's' or 'p')

- input: a positive integer
- output: sum or product (integer)
- rules
  explicit:
    - retrieve input
    - retrieve choice of operation
    - calculate sum or product
    - display result
  implicit:
    - I won't worry about input validation
    - sum of integers: 1 + 2 + 3 + .... + n
    - product of integers: 1 * 2 * 3 * .....*n


2. Examples / Test Cases: as given in problem sentence

3. Data Structure: number

4. Algorithm:

- prompt the user to enter an integer that is greater than 0 (use puts)
- save input to "number" after converting it to integer
- prompt the user to enter 's' or 'p' for sum or product (use puts)
- save input to choice after removing the new line at the end
- if the input is 's'
    perform compute_sum(number) and display result
- if the input is 'p'
    perform compute_product(number) and display result

calculate_sum method
----------
- define calculate_sum method that accepts one integer parameter "num"
- define sum and intialize it to 0
- start a loop from 1 to num (can use upto)
  - define "i" as the block variable
  - add "i" to sum
-return sum

calculate_product method
------------
- define calculate_product method that accepts one integer parameter "num"
- define product and initialize it to 1
- start a loop from 1 to num (can use upto)
  - define "i" as the block variable
  - multiply "i" by the "product"
- return product

5. Code:

=end

def compute_sum(num)
  sum = 0
  1.upto(num) { |i| sum += i }
  sum
end

def compute_product(num)
  product = 1
  1.upto(num) { |i| product *= i }
  product
end

puts ">> Please enter an integer greater than 0:"
number = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

if choice == 's'
  puts "The sum of the integers between 1 and #{number} is #{compute_sum(number)}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{number} is #{compute_product(number)}."
end