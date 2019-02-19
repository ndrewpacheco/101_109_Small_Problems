# Write a program that reads the content of a text file 
# and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?). 
# Any sequence of characters that are not spaces or sentence-ending characters
# should be treated as a word. You should also print the number of words in the longest sentence.

# first, split text by sentences

text = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this."


def longest_sentence(text)
    text.split(".").each {|sentence| p sentence}
end  

 longest_sentence(text)
