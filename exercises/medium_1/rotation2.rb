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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917