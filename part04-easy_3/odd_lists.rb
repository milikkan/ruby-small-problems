=begin

Odd Lists

Write a method that returns an Array that contains every other element of an Array 
that is passed in as an argument. 
The values in the returned list should be those values that are in the 1st, 3rd, 5th, 
and so on elements of the argument Array.

Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

1. Understanding the Problem:

- questions:
  I assume the input is array and I won't validate input

- input: an array
- output: an array

- rules:
  explicit:
    - the items that are located at the 1st, 3rd, 5th and so on indexes will be returned
    - empty array will return empty array
  implicit:
    - because array indexes are 0 based, I need to get 0th element instead of 1,
    so I need to grab items that has even indexes

2. Examples / Test Cases: as given above

3. Data Structure: array

4. Algorithm:

- create a varible "result"
- start a loop on the input variable "arr" (use Enumerable#each_with_index)
  - define block arguments as "item" and "index"
  - if index is even, put the item into result
- end loop
- return result

5. Code:

=end

def oddities(arr)
  result = []

  arr.each_with_index do |item, index|
    result << item if index.even?
  end

  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []