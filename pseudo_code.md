# Method that returns the sum of two integers

Given two integers.

Set variable equal to the sum of first integer and second integer.
Return variable

----------------------------------

START

Given two integers

SET number1 = first integer
SET number2 = second integer

SET result = number1 = number2

RETURN result

END

# Method that takes an array of strings and returns a string that is all those strings concatenated together

Given an array of strings.

Create "result" variable set to empty string

Iterate through the array of strings one-by-one
- for each iteration, add string to result variable

After iterating through the array, return result

---------------------------------

START

Given array of strings.

SET result = ""
SET iterator = 1

WHILE iterator <= length of array
  result + current_string

  iterator = iterator + 1

RETURN result

END

# Method that takes an array of integers and returns new array with every other element

Given array of integers.

Create new_array variable and set to empty array to store result.

Iterate through array of integers one-by-one
- for each iteration, determine if iteration is even
- if iteration is even
  - add to new_array
- otherwise, if iteration is odd
  - skip to next item in array

After iterating through array, return new_array variable

------------------------------

START

Given array of integers.

SET new_array = []
SET iterator = 0

WHILE iterator < length of array
  IF iterator is even
    new_array << integer
  ELSE
    skip
  END

  iterator = iterator + 1

END

RETURN new_array

END


