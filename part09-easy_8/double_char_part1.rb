=begin

Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

- input: a string
- output: a new string

- goal: to return a new string in which every character is written twice
- rules:
  * every character, including space and other non-alphabetic ones will be copied and pasted next to the original char
  * if input is empty string return empty string

- algorithm:
  * initialize a variable doubled_str and set it to empty string
  * iterate through each character of the string
    * multiply the current char by 2 and concatenate it to double_str variable
  * return double_str

=end

def repeater(string)
  double_str = ''
  string.each_char { |ch| double_str << ch * 2 }
  double_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''