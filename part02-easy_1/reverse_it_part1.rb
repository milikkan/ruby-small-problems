=begin

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

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

Algorithm

  - define method "reverse_sentence" that accepts a string "sentence" as parameter
  - split the "sentence" at space characters ans assign the result to "words" array (String#split)
  - reverse the array (Array#reverse) and assign it to "reversed_words"
  - join the "reversed_words" array's items using spaces (Array#join)
  - implicitly return the joined String 

=end

def reverse_sentence(sentence)
  sentence.split.reverse.join(" ")
end

p reverse_sentence('') == ''
p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'