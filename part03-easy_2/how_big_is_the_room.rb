=begin
How big is the room?

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

- input: two numbers (integer? float?)
- output: a float

- rules:
  explicit:
    - width and length will be taken from the user as meters
    - area = witdh * length
    - area will be converted to feet square
    - result will be displayed
    - no input validation

  implicit:
    - input is assumed to be float
    - output will be formatted as 2 digits after the point

Algorithm:

- ask the user length in meter
- assign input to "length" variable and convert this to float
- ask the user width in meter
- assign input to "width" variable and convert this to float
- multiply width by length to calculate and assign result to area_meter
- display the result using puts method and string interpolation
    convert area_meter to feet square by multiplying it with 10.7639
    also format the outputs as to have 2 digits after the point (use Kernel#format)

5. Code:

=end

SQ_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_meter = (width * length).round(2)
area_feet = (area_meter * SQ_FEET).round(2)

# puts "The area of the room is #{format('%.2f', area_meter)} square meters " + \
#      "(#{format('%.2f', area_meter * 10.7639)} square feet)."

puts "The area of the room is #{area_meter} square meters (#{area_feet} square feet)."