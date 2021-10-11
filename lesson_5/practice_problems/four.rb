# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]
arr1.map! do |element|
  if element.to_s.to_i == element
    element == 3 ? 4 : element
  else
    element.map do |num|
      if num == 3
        4
      else
        num
      end
    end
  end
end

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2.map! do |element|
  element == 3 ? 4 : element
end

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4