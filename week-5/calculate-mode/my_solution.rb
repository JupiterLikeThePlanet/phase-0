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


# 1. Initial Solution

def mode (array)
  my_hash = Hash.new 0
  array.each do |key|
    my_hash[key] += 1
  end
#  return [] <<  my_hash.max_by{|key,value| value} [0]
  [] <<  my_hash.max_by{|key,value| value}

end


# 3. Refactored Solution




# 4. Reflection
