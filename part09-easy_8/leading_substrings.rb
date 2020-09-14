=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

- input: a string
- output: an array of strings

- goal: to return all substrings from the input string that start at the beginning
- algorithm:
  * initialize a result array
  * start a loop from 1 to the length of string input
    * slice a substring starting at index 0 and at the length of current number
    * add this substring to the result array
  * return the array

=end

def leading_substrings(string)
  result = []
  (1..string.size).each do |n|
    result << string[0, n]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']