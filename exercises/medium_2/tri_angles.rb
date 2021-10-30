# PROBLEM
# Write a method that takes the 3 angles of a triangle as an argument
# and returns a symbol `:right`, `:acute`, `:obtuse`, or `:invalid`
# depending on whether the triangle is right, acute, obtuse or invalid.

# input: 3 integers representing 3 angles of a triangle
# output: a symbol representing type of triangle based on 3 angle arguments
# rules:
#   explicit:
#     - to be valid, sum of angles must be exactly 180 degrees and all angles must be > 0
#     - types of valid triangles:
#       - right: One angle of the triangle is a right angle (90 degrees)
#       - acute: All 3 angles of the triangle are less than 90 degrees
#       - obtuse: One angle is greater than 90 degrees. 
#     - may assume arguments will always be integer values

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# Array with 3 elements representing 3 angle arguments

# ALGORITHM
# - initialize `angles` array and add 3 angle arguments
# - check to see if sum of angles == 180 degrees
#   - return `:invalid` if not
# - check to see if all angles are greater than 0
#   - return `:invalid` if not
# - if one angle is 90 degrees, then return `:right`
# - if all 3 angles are less than 90 degrees, then return `:acute`
# - if one angle is greater than 90 degrees, then return `:obtuse`

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if angles.sum != 180
    :invalid
  elsif angles.any? { |angle| angle == 0 }
    :invalid
  elsif angles.any? { |angle| angle == 90 }
    :right
  elsif angles.any? { |angle| angle > 90 }
    :obtuse
  elsif angles.all? { |angle| angle < 90 }
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid