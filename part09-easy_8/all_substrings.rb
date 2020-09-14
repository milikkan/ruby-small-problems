=begin

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

- input: a string
- output: an array of strings

- goal: to find all substsrings of a given string
- rules:
  * the substrings should be ordered by where in the string substring begins
  * use leading_substrings method from the previous assignment
  * I assume that for the empty string input, the output will be empty array

- algortihm:
  * initialize an empty array called substr_array
  * initialize a variable called len and set it to the size of the input string minus 1
  * start a loop that iterates from 0 to len
    * slice a substring that starts at current iteration index and ends at index len
    * pass this substring in as the argument to leading substrings method
    * concatenate the return value of the method with the substr_array
  * return substr_array 
  
=end

def leading_substrings(string)
  result = []
  (1..string.size).each do |n|
    result << string[0, n]
  end
  result
end

def substrings(string)
  substr_array = []
  len = string.size - 1
  (0..len).each do |n|
    substr_array += leading_substrings(string[n..len])
  end
  substr_array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]