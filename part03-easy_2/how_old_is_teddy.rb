=begin
How old is Teddy?

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

Teddy is 69 years old!

- input: -
- output: a string to print

- rules:
  explicit:
    - Generate a random integer between 20 and 200, inclusive.
    - Output the string in the expected format.

- Algortihm:

- define "age" variable ans initalize it with a random number between 20 and 200 (use Kernel#rand)
  (I can pass a range to the rand method)
- using puts message and string interpolation, output the sentence

=end

age = rand(20..200)
puts "Teddy is #{age} years old!"