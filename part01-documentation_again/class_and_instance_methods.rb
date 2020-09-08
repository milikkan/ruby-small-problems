# Locate the ruby documentation for methods File::path and File#path. How are they different?

# Answer:

# File::path is a class method. When we call this method we use the class name.
#Example: 

puts File.path("/home/user_1")


# File#path is an inctance method. We must call this method on a file instance. 
# Example:

my_file = File.new("notes.txt") # file must be present or it raises exception
puts my_file.path