=begin

Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
The words in the array are case-sensitive: 'suv' != 'SUV'. ` 
Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2


- input: array
- output: a string (contains the item names and their counts)

- rules:
  explicit
    - words are case-sensitive
    - output shoud be in the format shown
  implicit:
    - I assume input array elements are only string values
    - There is no particular data structure to return, method just prints on screen
    - the order of the items in the printed text matches their order in the array

Algorithm

- define method "count_occurrences" that takes "items" array in as a parameter
- define a variable called "counts" and set it to an empty hash
- iterate over the "items" array (using Array#each) and for ecah "item"
    if "counts" hash has a key equal to "item"
      increment the value of this key by 1
    else
      create a key equal to this item and set its value to 1
- iterate over the hash key-value pairs (using Hash#each)
    print each key and value in the requested format

=end

# fist solution
# def count_occurrences(items)
#   counts = Hash.new(0)
#   items.each {|item| counts[item] += 1 }
  
#   counts.each {|item, count| puts "#{item} => #{count}" }
# end

# second solution
def count_occurrences(items)
  counts = {}
  items.uniq.each { |item| counts[item] = items.count(item) }
  counts.each {|item, count| puts "#{item} => #{count}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
