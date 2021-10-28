# PROBLEM
# Write a program that reads the content of a text file and then prints the longest sentence based on the number of words.
# Sentences end with periods, exclamation points, or question marks.
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# Program should also print the number of words in the longest sentence.

# input: text file
# output: string representing longest sentence and integer representing number of words in sentence
# rules:
#  explicit:
#    - should print the longest sentence based on number of words in sentence.
#    - '.', '!', and '?' all mark the end of a sentence.
#    - Any sequence of characters that are not spaces or end-of-sentence characters are words.
#    - should print the number of words in the longest sentence.

# TEST CASES / EXAMPLES
# pg84.txt
#  - longest sentence is 157 words long.
# longest_sentence.txt
#  - longest sentence is 86 words long.

# DATA STUCTURE
# We need a way to iterate through the sentences and then count the words in each sentence.
# An `Array` of sentences would allow us to iterate through sentences and count words.

# ALGORITHM
# - import txt file and save as string into local variable
# - split string based on end-of-sequence chars and save resulting array into `sentences` variable
# - initialize a `longest_sentence` variable to empty array to store longest sentence as we iterate through sentences.
# - For each sentence in the `sentences` variable:
#   - count number of words in sentence and store result in `number_of_words` variable
#   - if `number_of_words` in sentence is greater than the number of words in `longest_sentence`...
#     - set `longest_sentence` equal to sentence.
# - After iterating through every string in txt file, print `longest_sentence` as string and print number of words in `longest_sentence`

def find_longest_sentence(text)
  str = File.read(text)
  sentences = str.split(/\.|\?|!/)
  longest_sentence = []

  sentences.each do |sentence|
    number_of_words = sentence.split(' ').size
    if number_of_words > longest_sentence.size
      longest_sentence = sentence.split(' ')
    end
  end

  puts longest_sentence.join(' ')
  puts longest_sentence.size
end

find_longest_sentence("longest_sentence.txt")
find_longest_sentence("pg84.txt")