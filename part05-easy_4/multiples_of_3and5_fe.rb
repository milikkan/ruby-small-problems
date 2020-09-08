=begin

Multiples of 3 and 5

Further Exploration

Investigate Enumerable.inject (also known as Enumerable.reduce), 
How might this method be useful in solving this problem? 
(Note that Enumerable methods are available when working with Arrays.) 
Try writing such a solution. Which is clearer? Which is more succinct?

=end

def multisum(input)
  arr = Array.new(input) { |i| i + 1 }

  arr.inject(0) do |memo, num|
    if num % 3 == 0 || num % 5 == 0
      memo += num
    else
      memo
    end
  end
  
end

p multisum(1) == 0
p multisum(2) == 0
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20) == 98
p multisum(1000) == 234168