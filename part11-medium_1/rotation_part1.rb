=begin

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

- input: an array
- output: a new array

- goal: move the first element of input array to the last
- rules:
  * original array should not be mutated, return new array
  * don't use existing methods
  * single element array will return the same result
  * I assume that empty array will return empty array

- algorithm:
  * clone or duplicate the array
  * shift the first element from cloned array
  * push it to the end of the cloned array
  * return cloned array

=end

def rotate_array(array)
  copy = array.dup
  copy << copy.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true