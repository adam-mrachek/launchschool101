# PROBLEM
# Write a method that takes the lengths of the 3 sides of a triangle as arguments and
# returns a symbol `:equilateral`, `:isosceles`, `:scalene`, or `:invalid` depending on
# whether the triangle meets the criteria for each

# input: 3 integers
# output: symbol
# rules:
#   explicit:
#     - To be a valid triangle:
#       - the lengths of the 2 shortest sides must be greater than the length of the longest side
#       - all sides must have lengths greater than 0
#       - the triangle is invalid is neither of these conditions are satisfied
#     - types of valid triangles:
#         - equilateral: All 3 sides are of equal length
#         - isosceles: 2 sides are of equal length, while the 3rd is different
#         - scalene: All 3 sides are of different length

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Array to store side lengths and be able to sort by length (shortest to longest)

# ALGORITHM
# - iniitialize array, `sides`, and add 3 side arguments to array
# - sort array from smallest to largest side
# - if any of the sides have a length of 0, return `:invalid`
# - if the sum of the two shortest sides are less than or equal to length of longest side, return `:invalid`
# - if all 3 sides are equal, return `:equilateral`
# - if all 3 sides are different lengths, return `:scalene`
# - if two sides are equal, but the 3rd is different, return `:isosceles`

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort

  return :invalid if sides.any? { |side| side == 0 }
  return :invalid if (sides[0] + sides[1]) <= sides[2]

  if sides.uniq.size == 1
    :equilateral
  elsif sides.uniq.size == 3
    :scalene
  elsif sides.uniq.size == 2
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid