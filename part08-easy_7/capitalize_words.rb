=begin

Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

- input: a string
- output: a new string

- goal: to convert input string to a new one where each word capitalized
- rules:
  * convert each word's first letter to uppercase
  * make remaining chars lowercase
  * if the first char is not a letter do nothing
  * words are seperated by spaces

=end

def word_cap(str)
  # str.split.map { |word| word.capitalize }.join(' ')
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'