words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  # words.each do |word|
  #   base_word = word
  #   result = words.select do |word|
  #     word.chars.sort == base_word.chars.sort
  #   end
  #   p result if result.size > 1
  # end

result = {}

words.each do |word|
  key = word.chars.sort.join

  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.each_value { |value| p value }