# PROBLEM
# A collection of spelling blocks has two letters per block.
# The blocks limit the words you can spell with the block to just the words that don't use both letters
# from any given block and each block can only be used once.
# Given this information, write a method that returns `true` if the word passed in as an argument
# can be spelled from the given set of blocks. Otherwise, return `false`.

# input: string, and a set of spelling blocks represented by two letters separated by colons
# output: Boolean (true or false)
# rules:
#  explicit:
#   - words can only contain one letter from each block.
#   - each block can only be used once
#  implicit:
#   - spelling blocks are not case sensitive

# EXAMPLES / TEST CASES
# - see below

# DATA STRUCTURE
# - Array to hold letter blocks. Each element of array is a string containing both letters

# ALGORITHM
# - set variable/constant named `blocks` to an array of strings, each string representing two letters of each block
# - iterate through each letter block
#   - Count the number of times each letter appears in the given word
#     - if the total count is greater than or equal to 2, return false. Otherwise, return true

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  BLOCKS.none? { |block| word.upcase.count(block) }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true