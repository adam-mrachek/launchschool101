# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

letters = {}

statement.chars.each do |char|
  if letters[char]
    letters[char] += 1
  else
    letters[char] = 1
  end
end