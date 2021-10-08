# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# => 1
# => 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# => 1
# => 2

# Iterators operate on the original array in real-time, not on a copy of the array.
# So, operations such as pop and shift will shorten and shift the array being worked on by an iterator
# which will impact the result.