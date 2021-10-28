# PROBLEM
# Write a method that takes a string as an argument and returns true if all parentheses in string are properly balanced,
# and return false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# input: string
# output: Boolean (true or false)
# rules:
#   explicit:
#     - properly balanced parentheses means two things:
#       - there must be an equal number of opening and closing parantheses
#       - closing parenstheses must be preceded by an equal number of opening parantheses

# EXAMPLES / TEST CASES
# see below

# DATA STRUCTURE
# variables or hash to track number of opening and closing parantheses

# ALGORITHM
# - initialize `opening` variable equal to 0
# - initialize `closing` variable equal to 0
# - iterate through string argument one character at a time:
#   - if character == '(', then opening += 1
#   - if character == ')', then closing += 1
#   - if closing > opening at any point, return false
# - after iterating through all characters, compare opening to closing
#   - true if equal, false otherwise

def balanced?(str)
  opening = 0
  closing = 0

  str.chars.each do |char|
    if char == '('
      opening += 1
    elsif char == ')'
      closing += 1
    end

    return false if closing > opening
  end

  opening == closing
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false