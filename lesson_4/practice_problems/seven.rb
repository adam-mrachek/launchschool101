# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Answer
# The block's return value in this example will either be true or false
# because the last line of code in the block dictates the return value.
# `num.odd?` will evaluate to true or false
# The return value of `any?` in this example will be "true" because at least one of the elements in the array is odd.
# The output will be '1'. Since the first element of the array evaluates to 'true', `#any?` doesn't need to keep
# iterating through elements so it does not "puts" any elements after "1"