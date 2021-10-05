# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# answer: the last line prints out {:a => "hi there"}
# `informal_greeting` is pointing to the original object (the String object `"hi"`) 
# and the `<<` operator modifies the object that called it.