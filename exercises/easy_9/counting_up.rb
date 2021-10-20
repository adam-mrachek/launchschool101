# input: integer
# output: array of integers
# explicit requirements:
#   - the output array must include all integers, in sequence, between 1 and the integer argument
#   - we can assume that the argument will always be a valid integer greater than 0
#
# data stucture: array
# 
# algorithm:
#   - initialize result variable and set it to an empty array
#   - for every integer between 1 and the argument (including 1 and argument), add integer to result array
#   - return result array

def sequence(num)
  result = []

  (1..num).each { |num| result << num }

  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]