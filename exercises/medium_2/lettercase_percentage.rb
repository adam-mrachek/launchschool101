# PROBLEM
# Write a method that takes a string and then returns a hash that contains 3 entries:
# - one represents the percentage of characters that are lowercase
# - one represents the percentage of characters that are uppercase
# - one that representst the represents the characters that are neither

# input: string
# output: hash
# rules: 
#   explicit:
#     - String arugments will always contain at least one character
#     - Outpush hash should have 3 keys: lowercase, uppercase, neither
#     - Outpush hash values should represent percentage for each key
#   implicit:
#     - Output hash values should be accurate to one decimal place
#     - spaces in string count as a character

# EXAMPLES / TEST CASES
# See below

# DATA STRUCURE
# 3 integer variables to record frequency of each type of character
# Array: split characters of string into array of individual characters to iterate through to determine case
# Hash to record percentage of each type of character and will be the return value

# ALGORITHM
# - initialize Hash with 3 keys: lowercase, uppercase, neither.
#   - each key should point to a float set to initial value of 0.0
# - initialize 3 integer variables to track number of cases and 1 integer variable set equal to number of chars in string
# - iterate through each character in string argument:
#   - if character is empty or a number, add 1 to `neither` variable
#   - if character is uppercase, add `1` to uppercase
#   - if character is lowercase, add '1' to lowercase
# - set each corresponding value in Hash equal to number of each case / total number of chars
# return hash

def letter_percentages(str)
  percentages = {}
  uppercase = 0
  lowercase = 0
  neither = 0
  total_chars = str.length

  str.chars.each do |char|
    if char =~ /[^a-zA-Z]/
      neither += 1
    elsif char =~ /[A-Z]/
      uppercase += 1
    elsif char =~ /[a-z]/
      lowercase += 1
    end
  end

  percentages[:lowercase] = (lowercase / total_chars.to_f) * 100
  percentages[:uppercase] = (uppercase / total_chars.to_f) * 100
  percentages[:neither] = (neither / total_chars.to_f) * 100

  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }