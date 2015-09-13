# I worked on this challenge [by myself].
=begin
___________________1st Pseudo code____________________________
 Input: Array of integers
 Output: A sum total of those integers

Define method 'total' set to one argument 'array'
  create a variable 'sum' and set to zero
  Iterate for each number in array to be added to sum
  Return sum

################## First Code (WORKS) ########################
# def total (array_1, array_2)
#  sum = 0
#  array.each {|x| sum += x}
#  return sum
# end

___________________2nd Pseudo Code____________________________
# 3. total refactored solution
Define method 'total' set to one argument 'array'
  Return the sum of the array
______________________________________________________________
=end

def total(array)
  return array.reduce(:+)
end


######################Sentence Maker##########################
=begin
 4. sentence_maker pseudocode
 make sure all pseudocode is commented out!
 Input: Array of individual words ('strings')
 Output: A single string that creates a sentence

Define a method and give it an argument
  run an iteration block that adds each string in the array
  return a single string comprised of all words added together


# 5. sentence_maker initial solution
def sentence_maker(array)
  return sentence_maker.each {|word1,word2| word1 += (" "+word2)}
end

=end
# 6. sentence_maker refactored solution

def sentence_maker(array)
  return (array.join(" ") + ".").capitalize
end