# Write your own version of the rails titleize implementation.

words = "the flintstones rock"

def titleize(str)
  words = str.split(" ")
  words.map{ |name| name.capitalize }.join(" ")
end

titleize(words)