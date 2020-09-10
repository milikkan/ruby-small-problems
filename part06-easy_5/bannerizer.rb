=begin

Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+

- input: a string
- output: printing the input in a box

- rules:
  * the box size will change depending on the size of the input
  * if the input is empty string, result will be a 2 character wide box

=end

def print_in_box(str)
  len = str.size
  puts "+-#{'-' * len}-+"
  puts "| #{' ' * len} |"
  puts "| #{str} |"
  puts "| #{' ' * len} |"
  puts "+-#{'-' * len}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')