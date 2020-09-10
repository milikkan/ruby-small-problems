=begin

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

- input: string
- output: string

- goal: return the string all non-alphabetic chars replaced by spaces.
- rules:
  * input consists of only lowercased letters and non-alphbetic characters
    (non-alphabetic characters are all the characters except letters)
  * the result should never have consecutive spaces
- questions:
  * should I return a new string or the same string mutated?

- algorithm:
  1. loop through all the characters to remove non-alphabetic ones and save the result as an array
     a. if the current char is non-alphabetic, replace it with space
  2. filter the new array
     a. if current char is space, look at next char
     b. if the next char is also space, do not select this char
     c. else select this char 

=end

def cleanup(str)
  cleaned = str.chars.map do |ch|
    ('a'..'z').include?(ch) ? ch : ' '
  end
  result = []
  # cleaned.each_with_index do |ch, idx|
  #   if ch == ' '
  #     next_ch = cleaned[idx + 1]
  #     result << ch unless next_ch == ' ' 
  #   else
  #     result << ch
  #   end 
  # end
  cleaned.join.squeeze(' ')
  # result.join
end

p cleanup("---what's my +*& line?") == ' what s my line '