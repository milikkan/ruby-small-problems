=begin

Reverse It (Part 1)
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

The tests above should print true.

1. Understanding the Problem

- questions: 
  what is a word?
  what if there are multiple spaces between words? Will they be kept or reduced to 1 space?
  will there be any punctuation marks inside the given string

- input: a string
- output: a new string
- rules
    explicit:
      - a new string will be returned
      - empty string returns empty string
      - case is preserved

    impicit:
      - a word is the character sequence seperated by a space
      - I assume there won't be more than one space between words
      - I assume there won't be any punctuation inside the given string

2. Examples / Test Cases: given in the problem sentence

3. Data Structure: string / array

4. Algorithm

  - define method "reverse_sentence" that accepts a string "sentence" as parameter
  - split the "sentence" at space characters ans assign the result to "words" array (String#split)
  - reverse the array (Array#reverse) and assign it to "reversed_words"
  - join the "reversed_words" array's items using spaces (Array#join)
  - implicitly return the joined String 

5. Code

=end

def reverse_sentence(sentence)
  #words = sentence.split
  #reversed_words = words.reverse
  #reversed_words.join(" ")

  sentence.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'