# How does count treat the block's return value? How can we find out?

arr = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p arr
# Answer
# The return value is evaluated as true or false. The `#count` method sums the total number of elements that evaluate to 'true'
# We can reference the Ruby docs to learn how the `count` methods treats the block's return value.