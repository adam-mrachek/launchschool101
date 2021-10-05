# In other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# Answer
# => "one is: one"
# => "two is: two"
# => "three is: three"

# The `mess_with_vars` method creates three new local variables and sets them equal to the values of the arguments or variables.

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# Answer
# => "one is: one"
# => "two is: two"
# => "three is: three"

# The result is the same as the first code group even though the code within the method is slightly different.
# In this case, The `mess_with_vars` method creates three new local variables and sets them equal to different strings.
# The local variables are re-assigments and do not modify the variables passed in as arguments.

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Answer
# => "one is: two"
# => "two is: three"
# => "three is: one"

# In this code group, the method is using `#gsub!` which modifies the object it is being called by.
# The local variables (`one`, `two`, and `three`) reference the same object of the arguments being passed in so those objects are modified as shown in the output.