=begin

Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

- input: an array of integers
- output: a float

- goal: to multiply all numbers in the array together and divide the result by the array size
- rules:
  * there will be no empty array input (input will have at least one number)
  * result must be reounded to 3 decimal places

- algorithm:
  * initialize a product variable and set it to 1
  * iterate through the array
    * multiply next number with the product
  * multiply product by 1.0 and divide by the size of the array (to execute a float division)
  * format the output to include 3 decimal places

=end

def show_multiplicative_average(array)
  product = 1
  array.each { |num| product *= num }
  result = product * 1.0 / array.size
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667