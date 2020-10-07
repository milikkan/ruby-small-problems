=begin
Greeting a user

Write a program that will ask for user's name. The program will then greet the user. 
If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

- input: name (string)
- output: string

- rules
  explicit:
    - get user's name on the same line with the prompt
    - show output depending of the last caharacter of the name (!)
  implicit
    - I assume that name is given every time, no empty input

- Algorithm:

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

# if name.end_with?('!')
#   name = name.slice(0, name.size - 1).upcase
#   puts "HELLO #{name}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello, #{name}."
# end

puts name[-1] == '!' ? "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?" : "Hello, #{name}."