=begin

Counting the Number of Characters

Write a program that will ask a user for an input of a word or multiple words and 
give back the number of characters. Spaces should not be counted as a character.

input:
Please write word or multiple words: walk

output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run

output:
There are 13 characters in "walk, don't run".

1. Understanding the Problem:

- questions:
  - only spaces shouldn't be counted, right?
  - What if user inputs nothing, should I validte against empty input?

- input: a string
- output: a string indicating number of characters in input excluding spaces

- rules:
  explicit:
    - get user input
    - check if the input is empty, continue asking until a velid input is retrieved
    - count all chars ecept spaces
    - print the result
  implicit:
    - perform input validation against empty input

2. Examples / Test Cases: as given in the problem statement

3. Data Structure: array

4. Algorithm:

- create a variable named "input" and initialize it to empty string
- create a loop that will break when the input size is greater than 0
  - prompt user to input a string
  - assign input to "input" variable
  - break if input size is greater than 0
  - output an error message indicating user should input a string
- end loop
- initialize variable "count" to 0
- split input into a chars array (String#chars)
- loop over chars array (Array#each)
  if next char is not a space
    increment "count" by 1
- end loop
- print result

5. Code:

=end

input = ''
loop do
  print "Please write word or multiple words: "
  input = gets.chomp

  break if input.size > 0
  puts "Invalid input..." 
end

count = 0
input.chars.each do |ch|
  count += 1 if ch != ' '
end

puts "There are #{count} characters in \"#{input}\"."