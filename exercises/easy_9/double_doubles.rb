# input: integer
# output: integer
# rules:
#    Explicit:
#      - all integers that are not double numbers should be doubled and returned
#      - all integers that are double numbers should be returned as-is
#
# algorithm:
# - determine number of digits in integer
#   - if odd, then double integer and return since an integer with odd number of digits can't be a double number
#   - if even, go to next step
# - split integer into two halves with an even number of digits in each half
#   - convert integer to string to split
#   - first half is index 0 to (string_length / 2) - 1
#   - second half is index[string_length / 2] to index[string_length - 1]
# - compare each half to see if they are equal
#   - if equal, return original integer since it is a double number
#   - if not equal, double integer and return value.

def twice(num)
  digits = num.to_s
  return num * 2 if digits.length.odd?

  mid_index = digits.length / 2

  first_half = digits[0..mid_index - 1]
  second_half = digits[mid_index..digits.length - 1]

  if first_half == second_half
    return num
  else
    return num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10