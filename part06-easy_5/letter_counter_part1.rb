=begin

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

- input: string
- output: hash

- goal: to count the word sizes of the given string and store them in a hash
- rules: 
  * words will be seperated one or more spaces
  * non-alphabetic chars (punctauation) is included in the word size
  * for empty string, return empty hash

- algorithm:
  1. initialize an empty hash named result
  2. split the input string by spaces to obtain words as an array
  3. iterate through the words array, for each iteration:
     a. detect word length
     b. if a key exists for the length increment its value
     c. else create a key with and set its value to 1
  4. return result hash

=end

def word_sizes(str)
  result = {}
  str.split.each do |word|
    len = word.size
    result.key?(len) ? result[len] += 1 : result[len] = 1
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}