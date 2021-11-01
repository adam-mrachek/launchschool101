# PROBLEM
# Write a method that takes an array as an argument and sorts the array using a bubble sort algorithm.

# input: array
# output: sorted array
# rules:
#   explicit:
#     - the sort should be "in-place", ie. the Array passed in as an argument will be mutated.
#     - Can assume the array will contain at least 2 elements.

# EXAMPLES / TEST CASES
# see below

# DATA STRUCTURE
# Array

# ALGORITHM
# - initialize variable `swapped` set to `false` to track whether a swap was performed during each pass through array
# - initialize variable `index` set to 0 to iterate through given array
# - Until `index` is greater than `length of index - 1` do:
#   - if `index` is greater than `index + 1`:
#     - set `swapped` equal to true
#     - set `index` equalt to `index + 1` and `index + 1` equal to index
#   - else do nothing
#   - `index += 1`
# - If `swapped`  is equal to true after comparing all elements, pass through array again
#   - set `swapped = false`
#   - set `index = 0`
# - If `swapped` is equal to false after comparing all elements, return array

def bubble_sort!(array)
  starting_position = 0

  loop do
    swapped = false
    index = 0

    while index < array.length - 1 do
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
  
      index += 1
    end

    break if swapped == false
  end

  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array #== [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)