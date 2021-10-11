# Write a method that returns one UUID when called with no parameters.

def randomize_hex_char
  hex_chars = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  hex_chars.sample
end

def create_uuid
  uuid = ""

  [8, 4, 4, 4, 12].each do |num|
    num.times do
      uuid << randomize_hex_char
    end
    uuid << "-" unless num == 12
  end

  uuid
end

create_uuid