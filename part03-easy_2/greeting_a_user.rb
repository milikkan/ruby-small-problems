=begin

Greeting a user

Write a program that will ask for user's name. The program will then greet the user. 
If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

1. Understanding the Problem:

- questions:
  What should I do if no name is given?
  How can I check the last letter of a string?
  
- input: name (string)
- output: string

- rules
  explicit:
    - get user's name on the same line with the prompt
    - show output depending of the last caharacter of the name (!)
  implicit
    - I assume that name is given every time, no empty input

2. Examples / Test Cases: given in the problem sentence

3. Data Structure: string

4. Algorithm:

- prompt user for name (use print)
- retrieve name, remove new line at the end and save it to "name" variable
- check if "name" ends with '!' character (can use String#end_with?)
    - if it doesn't, print "Hello, name" using puts
    - if it does, 
        - slice name, omitting the last character, name[0, name.size-1]) and make it all caps
        - print "HELLO NAME. WHY ARE WE SCREAMING?"

5. Code:

=end

print "What is your name? "
name = gets.chomp

if name.end_with?('!')
  name = name.slice(0, name.size - 1).upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end