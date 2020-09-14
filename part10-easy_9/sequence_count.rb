=begin

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Examples:

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

- input: two integers (count and first_number)
- output: an array

- goal: to return an array that contains count number of elements that starts from first_number and continues as the multiples of the first_number

- rules:
  * array size wil be equal to count
  * count will always be 0 or greater
  * if count is 0, return empty array
  * first_number can be any number

- algorithm:
  * initialize a variable named sequence and set it to empty array value
  * loop from 1 upto count
    * for each iteration multiply first_number by current loop index
    * add result to sequence array
  * return sequence array

=end

# def sequence(count, first_number)
#   sequence = []
#   1.upto(count) do |index|
#     sequence << first_number * index
#   end
#   sequence
# end

def sequence(count, first_number)
  (1..count).map { |num| num * first_number }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []