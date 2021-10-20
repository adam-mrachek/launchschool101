def uppercase?(str)
  alphabet_chars = str.split('').reject{ |char| char.to_i.to_s == char }
  alphabet_chars.all? { |char| char.upcase == char }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true