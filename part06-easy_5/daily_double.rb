=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

- input: string
- output: string

- goal: to delete the consecutive duplicate characters from the given string
- rules:
  * empty string will return empty string
  * any duplicate chars will be eliminated to a single char

- algorithm:
  - initialize an empty result array
  - seperate the string into chars
  - iterate through each character
    - check the result array's last item at every iteration.
    - if the last item is not equal to the current char, append the char into the result array
  - join result array and return
  
=end

def crunch(str)
  result = []

  str.chars.each do |ch|
    result << ch unless result.last == ch
  end

  result.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''