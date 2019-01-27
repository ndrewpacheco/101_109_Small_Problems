
# Write a method that takes an array of strings,
# and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# input: array, output: array
# iterarte through input, for each word, split it to chars. the  delete matching vowels of each word

def remove_vowels(words_arr)

  words_arr.map do |word|
    word.chars.delete_if {|char| char.match?(/[AEIOUaeiou]/)}.join
  end

end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']