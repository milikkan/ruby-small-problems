=begin

Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

- input: string
- output: a new string

- rules:
  * take the string of words and swap the first and last letter of each word
  * every word contains at least one letter
  * every string contains at least one word (no empty input)
  * words are seperated by spaces
  * string will contain words and spaces
  * if the word is one letter there will be no change
  * preseve case of the letters while swapping

- algorithm:
  1. seperate the words into an array
  2. map words array iterating through each word and swap the first and last letters 
     a. apply swapping logic if the word size is greater than 1 ->  str[-1] + str[1..-2] + str[0]
     b. else do nothing (add the word directly to the mapped array)
  3. join the array using space
=end

def swap(str)
  words = str.split
  
  words.map! do |word|
    word.size > 1 ? word[-1] + word[1..-2] + word[0] : word
  end
  words.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'