=begin
Tip calculator

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

- input: bill amount, tip rate (float)
- output: tip amount, total (float)

- rules:
  explicit:
    - get bill amount and tip rate
    - compute tip
    - display results
  implicit:
    - I assume the inputs are valid

- Algorithm:

- prompt the user for the bill amount
- convert input to float and save it to "amount" variable, 
- prompt the user for tip percentage
- convert input to float and save it to "tip_percentage" variable
- divide "tip_percentage" by 100
- multiply division by the "amount" and save this to the "tip_amount" variable (round it 2 points)
- add "tip_amount" to "amount" and assign result to "total_amount" variable (round it 2 points)
- display results using puts and string interpolation 

=end

print "What is the bill? "
amount = gets.to_f

print "What is the tip percentage? "
tip_percentage = gets.to_f

tip_amount = amount * tip_percentage / 100
total_amount = amount + tip_amount

puts "The tip is $#{format('%.2f', tip_amount)}"
puts "The total is $#{format('%.2f', total_amount)}"