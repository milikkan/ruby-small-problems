=begin

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

- input: two arrays
- output: an array

- goal: to combine the 2 input arrays and order the resulting array in such a way that one element comes from the first array and the next one from the other array in an alternating order.

- rules:
  * input arrays are non empty
  * input arrays have the same size

- algorithm:
  * initialize a result array
  * iterate from 0 to the size of the input arrays (size are same for both)
    * take the element from the first array at the current index and push it to the result array
    * do the same for the second array
  * return result array

=end

def interleave(array1, array2)
  result = []
  (0..array1.size - 1).each do |idx|
    result << array1[idx]
    result << array2[idx]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']