# input: integer
# output: rotated integer
# requirements:
#  explicit:
#    - The resulting integer needs to be the maximally rotated result of the input integer.
#      - rotate first number > fix first number and rotate remaining digits
#      - fix first two numbers and rotate remaining digits
#      - continue this process until the final two digits are rotated
#    - Can use `rotate_rightmost_digits` method created in second exercise
#    - do not need to handle multiple 0s.
#
# Test cases/examples: see below
# 
# Data structure: we can use an array to rotate individual digits
#
# Algorithm:
# - Convert input integer into an array of digits that can be rotated one at a time.
# - Save resulting array into a variable such as `all_digits`
# - From the length of the array down to 2, rotate `all_digits` using `rotate_rightmost_digts`
# - return integer

def rotate_array(arr)
  arr.slice(1..-1) + [arr[0]]
end

def rotate_rightmost_digits(number, digits)
  numbers_arr = number.to_s.chars
  last_digits = numbers_arr.pop(digits)
  rotated_digits = rotate_array(last_digits)

  result = numbers_arr + rotated_digits
  result.join.to_i
end

def max_rotation(num)
  all_digits = num.to_s.chars
  result = num

  all_digits.length.downto(2) do |n|
    result = rotate_rightmost_digits(result, n)
  end

  result
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845