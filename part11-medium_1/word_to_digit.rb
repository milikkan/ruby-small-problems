=begin

Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

- input: a string
- output: a string

- goal: convert words from 'zero' to 'nine' to digits of 0..9.
- rules:
  * I assume that words are seperated by at least one space
  * some words may have leading or trailing non-alphabetic characters such as dots

- algorithm:
  * initialize a constant array that contains string digits
  * convert input string to words by splitting at spaces
  * iterate through words array and map each word
    * iterate through the array
      * if the word contains one of the values, replace it with the corresponding index
  * join the string with spaces and return

=end

DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def word_to_digit(sentence)
  sentence.split.map do |word|
    DIGITS.each_with_index do |digit, idx|
      word = word.gsub(digit, idx.to_s) if word.match(digit)
    end
    word
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
