=begin

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Examples:

block_word?('BATCH') == true  # B:O N:A G:T C:P H:U
block_word?('BUTCH') == false # B:O H:U G:T C:P (H:U)
block_word?('jest') == true   # J:W R:E F:S G:T

- input: a string
- output: a boolean

- goal: detect if the input can be spelled from the set of letter blocks by using each block only once
- rules:
  * each block can only be used once
  * if all letters can be detected/spelled without using any of the blocks more than once, return true
  * input may be uppercase or lowercase, ignore case

- data structure: hash

- algorithm:
  * initialize letter blocks as a hash
  * convert input to uppercase form
  * iterate through each letter of the word 
    * if letter is present in keys or values, delte that pair from hash
    * else return false
  * return true

=end

def block_word?(word)
  blocks = {'B':'O', 'X':'K', 'D':'Q', 'C':'P', 'N':'A', 
            'G':'T', 'R':'E', 'F':'S', 'J':'W', 'H':'U', 
            'V':'I', 'L':'Y', 'Z':'M'}

  word.upcase.chars.each do |ch|
    key, value = ch.to_sym, ch
    if blocks.key?(key)
      blocks.delete(key)
    elsif blocks.value?(value)
      blocks.delete(blocks.key(value))
    else
      return false
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true