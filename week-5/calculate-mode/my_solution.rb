# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array

# What is the output? (i.e. What should the code return?)
# A key of the most frequently occurring key

# What are the steps needed to solve the problem?
# Set a counter for each list item
# loop through entire list, and increment each counter by one when it appears
# display list item with the largest counter value




=begin
# 1. Initial Solution
def mode (array)
  count = Hash.new 0
  array.each do |key|
    count[key] += 1
  end
            #returns an array,             #append this index
  max_val = count.max_by{|key,value| value} [1]
      # select = enumerable, iterates & selects k/v pairs
      # select |key,value| pair that meets the condition b==max_value                # do it by the keys
  count.select{|a,b| b == max_val}.keys
end
=end


# 3. Refactored Solution
def mode (array)
  count = array.each_with_object(Hash.new(0)) {|key,val| val[key] += 1 }
  max_val = count.max_by{|key,val| val} [1]
  #select from the k/v pair of count the val=max, by the keys
  count.select {|key,val| val == max_val}.keys
end




=begin
# 4. Reflection
(1) Which data structure did you and your pair decide to implement and why?

We chose a hash because in order to determine the most frequently occuring value in the array, we must create a key/value pair that counts the amount of times a key occurs


(2) Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

There was a general pseudocode that gave an idea, but given the process we went through to get to a solution, there were some gaps.

(3) What issues/successes did you run into when translating your pseudocode to code?

Not accounting for how to extract the mode with just the key and that there could be multiple keys to return.


(4) What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

Each new method learned took time to understand and break down what exactly it was doing.  These are the methods used:

.select
.each_by_object
.max_by
.keys



=end