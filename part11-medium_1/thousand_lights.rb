=begin

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

- input: a number (n)
- output: an array

- goal: to return the list of lights that are on after n repetitions
- rules:
  * there are n switches and therefore n lights
  * lights are initially off
  * you toggle light at every pass (toggle -> if light is off, turn it on and if it is on, turn it off)
  * on the first pass, you toggle every one of them, on the second you toggle switches 2, 4, 6 ..
  * on every visit you increase the step size and just toggle multiples of this step
  * repeat the tour n times
  * return an array that contains the position of lights that are on

- examples:
  * n = 5 -> [0, 0, 0, 0, 0] -> return [1, 4]
    round 1: [1, 1, 1, 1, 1] 
    round 2: [1, 0, 1, 0, 1]
    round 3: [1, 0, 0, 0, 1]
    round 4: [1, 0, 0, 1, 1]
    round 5: [1, 0, 0, 1, 0]

- data structure: array

- algorithm:
  * initialize an array named lights and set it to n-size array whose elements are false
    (false will represent light off, true on, the index of array will represent the order of light on the bank)
  * initialize a variable named step and assign nil
  * execute a loop starting from 1 to n (loop variable: idx)
    * reassign step to idx
    * execute a loop that will break when step is greater than n
      - visit the item in the array that is located at step - 1
      - toggle the visited value (negate it)
      - increment step by idx
    * end inner loop
  * end outer loop
  * initialize a result array
  * iterate through lights array
    * if current element is true, add the index to result
  * return result 

=end

def bank_of_lights(n)
  lights = [false] * n
  step = nil
  1.upto(n) do |idx|
    step = idx
    loop do
      lights[step - 1] = !lights[step - 1]
      step += idx
      break if step > n  
    end
  end
  result = []
  lights.each_with_index { |item, idx| result << (idx + 1) if item }
  result
end

p bank_of_lights(5) == [1, 4]
p bank_of_lights(10) == [1, 4, 9]
p bank_of_lights(1) == [1]
p bank_of_lights(0) == []

p bank_of_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 
  121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 
  441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

