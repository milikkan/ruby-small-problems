=begin

Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

- input: an array of arrays
- output: an array of strings

- algortihm:
  * intialize result variable as an empty array
  * iterate through input array
    * iterate last element of the current subarray number of times
      * add first element of subarray to result array in each iteration
  * return result array

=end

def buy_fruit(list)
  result = []
  list.each do |sub_arr|
    sub_arr.last.times { result << sub_arr.first }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
