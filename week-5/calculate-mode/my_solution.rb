# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

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





# 4. Reflection
