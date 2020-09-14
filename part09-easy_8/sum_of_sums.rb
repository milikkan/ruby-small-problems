=begin

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

- input: an array of numbers
- output: a number

- goal: to calculate the sum of "leading" subsequences and return the sum of them

- questions:
  * what is a leading subsequence? -> start with the first element and always continue sequentially, do not omit items

- rules:
  * there will no empty array input, input will contain at least one number
  * first find the leading subsequences, them sum these sub arrays, them sum these sums

- example: [1, 2, 3, 4, 5]
  * subsequences = [1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5]
  * sums = 1 + 3 + 6 + 10 + 15 = 35

- algorithm:
  * initialize a leads array
  * iterate through the size of input array
    * slice a subarray that starts at index 0 and at the length of the current index  
    * add the sliced sub array to leads array
  * iterate through the leads array
    * sum all sub arrays
  * sum the resulting array and return this sum

=end

def sum_of_sums(array)
  leads = []
  1.upto(array.size) do |len|
    leads << array.slice(0, len)
  end
  # leads.map { |arr| arr.reduce(:+) }.sum
  leads.sum { |arr| arr.reduce(:+) }
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35