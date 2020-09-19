=begin

Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

- input: a string
- output: a string

- goal: read a piece of text and print the longest sentence and number of words in this sentence
- rules:
  * sentences may end with . ! ?
  * words are sequence of characters that ends with either a space or sentence-ending chars

- questions:
  * how to read a text from file

- algortihm:
  * initialize a longest_sentence variable and assign nil to it
  * initialize a sentence variable as an empty string
  * split the text from the positions where sentence ending chars are located and obtain sentences array
  * iterate through sentences array
    * split each sentence at the spaces to obtain words
    * detect size of the array
    * if longest_sentence is nil or longest_sentence is smaller than the current sentence
      * assign longest_sentence the size of the current array
      * assign sentence the current array
  * print longest sentence and length
=end

file = File.open("pg84.txt")
text = file.read

max_word_length = nil
longest_sentence = ''

# my original solution
# text.split(/\.|\?|!/).each do |sentence|
#   current_word_length = sentence.split.size
#   if max_word_length == nil || max_word_length < current_word_length
#     max_word_length = current_word_length
#     longest_sentence = sentence
#   end
# end

# more elegant solution using max_by
sentences = text.split(/\.|\?|!/)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }
max_word_length = longest_sentence.split.size

puts "Longest sentence: #{longest_sentence}"
puts "Size: #{max_word_length}"

file.close