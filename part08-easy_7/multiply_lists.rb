=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

- input: 2 arrays of numbers
- output: an array of numbers

- goal: return an array which contains the product of the input array's numbers that reside in the same index

=end

# first solution
# def multiply_list(array1, array2)
#   array1.map { |num| num * array2[array1.find_index(num)] }
# end

# second solution using Array#zip
def multiply_list(array1, array2)
  array1.zip(array2).map { |arr| arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]