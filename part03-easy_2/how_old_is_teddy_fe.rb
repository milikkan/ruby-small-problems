puts "Hello, what is your name?"
name = gets.chomp

age = rand(20..200)
puts "#{name.empty? ? "Teddy" : name} is #{age} years old!"