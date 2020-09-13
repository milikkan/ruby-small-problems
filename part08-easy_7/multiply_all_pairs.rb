=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

- input: 2 arrays of numbers
- output: an array of numbers

- goal: to multiply every pair from the 2 input arrays and sort the resulting array by increasing value
- rules:
  * both arrays contain numbers
  * the result array will contain the product of every pair
  * the result will be sorted by increasing value
  * arguments will always contain value, there will be no empty array inputs

- algortihm:
  - initialize a result array
  - iterate through the first array
    - iterate through the second array
      - push the product of 2 current numbers to the result
    - end inner loop
  - end outer loop
  - sort the result array and return

=end

# first solution
# def multiply_all_pairs(array1, array2)
#   result = []
#   array1.each do |number1|
#     array2.each do |number2|
#       result << number1 * number2
#     end
#   end
#   result.sort
# end

# second solution
def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |n1, n2| n1 * n2 }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]