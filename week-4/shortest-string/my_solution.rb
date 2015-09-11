# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  x = (list_of_words)
  return x.min { |a, b| a.length <=> b.length }
end


# My notes
# .size = .length, preference to length because of Python
# <=> : comparator block, returns 1,0, or -1