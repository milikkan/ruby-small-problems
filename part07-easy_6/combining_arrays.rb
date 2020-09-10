=begin

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

- input: two arrays
- output: an array

- rules:
  * combine two arrays into one
  * remove duplicates from the resulting array

=end

# def merge(array1, array2)
#   (array1 + array2).uniq
# end

def merge(array1, array2)
  # array1.union(array2)
  # or
  array1 | array2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
