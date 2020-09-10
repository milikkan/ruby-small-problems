=begin

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Examples:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
You may assume that the argument is always greater than or equal to 2.

- input: an inteher (always >= 2)
- output: an integer

- rules:
  * argument specifies the number of digits that our target fib. number should have
  * after finding that target number, we will return its index
  * the first number's index is 1
  * I won't deal with input validation, it will always be greater than or equal to 2
  * fibonacci number is the number that is the sum of its two previous numbers

- examples:
  * input: 2 -> i need to find the fib.num that has two digits and then return its index

- algorithm:
  * initialize an array of fibnum
  * start a loop
    * calculate next fibnum and push to the array
    * if the last element of fibnum array has 2 digits return the length of the array
    * else continue loop
  
  - calculating next fibnum (pass the index of fibonacci number as argument)
    * return 1 if index is 1 or 2 (guard clause)
    * set first number to 1
    * set second number to 1
    * set counter to 3
    * set fibonacci to the sum of first and second numbers
    
    * loop while counter < index
      * increment counter by 1
      * set first to second
      * set second to fibonacci
      * sum first and second numbers and assign the result to fibonacci
    
    * return fibonacci
      

=end

def calculate_fibonacci(index)
  return 1 if index == 1 || index == 2
  first_number = 1
  second_number = 1
  fibonacci = first_number + second_number
  counter = 3

  loop do
    break if counter == index
    first_number = second_number
    second_number = fibonacci
    fibonacci = first_number + second_number
    counter += 1
  end

  fibonacci
end

# recursive version is very slow, do not use it

# def calculate_fibonacci(index)
#   return 1 if index == 1 || index == 2
#   calculate_fibonacci(index - 1) + calculate_fibonacci(index - 2)
# end

def find_fibonacci_index_by_length(len)
  fibnums = []

  num = 1
  loop do
    fibnums << calculate_fibonacci(num)
    break if fibnums.last.digits.size == len
    num += 1
  end
  fibnums.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
# ATTENTION: may take long time to finish
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847