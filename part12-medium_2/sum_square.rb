=begin

Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

- input : a positive integer
- output: an integer (0 or positive)

- goal: to calculate the difference between the square of the sum of first n integers and the sum of squares of these integers.

- algorithm:
  * initialize a variable named sum, and squared_sum and set them to 0
  * start a loop from 1 upto input
    - add current number to the sum
    - add the squared number to squared_sum
  * calculate sqaure of sum
  * subtract sqaured_sum from sum_squared and return

=end

def sum_square_difference(number)
  sum = 0
  squared_sum = 0
  1.upto(number) do |current_num|
    sum += current_num
    squared_sum += current_num ** 2
  end
  sum ** 2 - squared_sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150