=begin

Reverse It (Part 2)
Write a method that takes one argument, a string containing one or more words, 
and returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

1. Understanding the Problem

- questions: How many spaces between words? If more than one, will they be preserved in the output?

- input: a string
- output: string

- rules:
  explicit:
    - input string will contain one or more words
    - words whose length is greater than or equal to 5 will be reversed
    - inputs contain only spaces and letters, no punctuation

  implicit:
    - case is preserved when the word was reversed
    - it is assumed there is only one space between each word

2. Examples / Test Cases: given above

3. Data Structure: string / array

4. Algorithm

- define method "reverse_words" that accepts "str" String as parameter
- split "str" from the spaces and assign the result to "words" array
- map the "words" array assigning the result to "words_reversed" array. During mapping;
  - check each word's length
    if length >= 5 reverse the word and return it (using String#reverse)
    else return the original word
- join "words_reversed" array using spaces in between words and assign the result to "str"

5. Code

=end

def reverse_words(str)
  words = str.split
  words_reversed = words.map do |word|
    word.length >= 5 ? word.reverse : word
  end
  words_reversed.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS