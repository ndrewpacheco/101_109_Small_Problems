# Write a method that takes a single String argument and
# returns a new string that contains the original value of the argument
# with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap(str)
  split_str = str.split

  #.match(/[a-zA-Z]/).to_s

  split_str.map! do |word|
    word = word.downcase
    word.capitalize
  # new_letter = word.match(/[a-zA-Z]/).to_s
  # idx = word.index(new_letter)
  # word[idx] = new_letter.capitalize
  # word
  end
  split_str.join(" ")
    # return here
end
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'