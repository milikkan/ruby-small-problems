=begin

Array Average

Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be positive integers.

Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

The tests above should print true.

1. Understanding the Problem:

- questions: 
    Examples show that the result will be an integer that is rounded down to the nearest integer, 
    can you confirm?

- input: an array of integers
- output: an integer
- rules:
    explicit:
      - the input array will not be empty
      - the input array will contain only positive integers
      - the output will the average as an integer
    implicit:
      - average is calculated by adding all the numbers together and 
        dividing the total to the count of integers
      - from examples, it is implied that the result will be an integer that is rounded down.

2. Examples / Test Cases: given in the problem statement

3. Data Structure: array

4. Algorithm:

- define method "average" that accepts "arr" array as an argument
- calculate the sum of the array elements using Array#sum
- divide sum to the array size (Array#size) and return

5. Code:

=end

def average(arr)
  arr.sum / arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# further exploration -> float result

def average_f(arr)
  arr.sum(0.0) / arr.size
end

puts average_f([1, 5, 87, 45, 8, 8])
puts average_f([9, 47, 23, 95, 16, 52])
