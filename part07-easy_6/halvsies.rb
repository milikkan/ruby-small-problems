=begin

Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

- input: an array
- output: a nested array

- goal: divide the input array in 2 parts
- rules:
  * if the size is odd, the middle item will be in the first half
  * if size is even, two halves will be same size
  * empty array will return 2 empty arrays (nested)

- algorithm:
  * detect middle element by dividing size by 2
  * initialize a result array that has 2 empty arrays inside
  * iterate through array
    - if the current index is smaller than the middle element index
      * append current element to the left array
    - if the current index is greater than the middle element index
      * append current element to the right array
    - if the current index is equal to the middle element index
      * append to left array if the size is odd
      * else append to right array
  * return result array

- example:
  * input = [1, 2, 3, 4] -> middle = 2
    result = [[], []]
    iter1 -> element = 1 index = 0 -> [[1], []]
    iter2 -> element = 2 index = 1 -> [[1, 2], []]
    iter3 -> element = 3 index = 2 -> [[1, 2], [3]]
    iter4 -> element = 4 index = 3 -> [[1, 2], [3, 4]]

=end

def halvsies(array)
  result = [[], []]
  middle_idx = array.size / 2
  
  array.each_with_index do |element, idx|
    if idx < middle_idx
      result[0] << element
    elsif idx > middle_idx
      result[1] << element
    elsif idx == middle_idx && array.size.odd?
      result[0] << element
    else
      result[1] << element
    end
  end
  result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]