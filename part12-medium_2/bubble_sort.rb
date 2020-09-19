=begin

Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

Examples

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

- input: an array
- output: same array sorted

- goal: to sort the array using Bubble Sort algorithm
- rules:
  * assume input array contains at least 2 elements
  * mutate the array passed in as argument
      
- algorithm:
  * start a loop
    * initialize a variable named swap and set it to false
    * iterate from 0 to array.size minus 2 (idx)
      * compare item at idx and item at (idx + 1)
        - if item at idx is greater 
          - set swap to true
          - swap 2 ites in place
    * end inner loop
    * break if swap is false
  * end outer loop
  * return array

=end

def bubble_sort!(arr)
  loop do
    swap = false
    0.upto(arr.size - 2) do |idx|
      first, second = arr[idx], arr[idx + 1]
      if first > second
        arr[idx], arr[idx + 1] = second, first
        swap = true
      end
    end
    break unless swap
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)