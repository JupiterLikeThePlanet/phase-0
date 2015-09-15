# Pad an Array

# I worked on this challenge [ with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

# An array, integer, and 3rd value

# What is the output? (i.e. What should the code return?)

# 1st: an array that isn't really changed
# 2nd: an array that has changed

# What are the steps needed to solve the problem?
# define pad!


# 1. Initial Solution
#Psuedocode
#
# Defining method that would accept an array, and 2 integers
# pad! would return an array that has been modified by the method


#take the min_size and compare it against the indexes in the array
#     if array.count > min_size,
#       return array
#    if not
#       add indexes with the value of 'value' to 'array'
#       do that until array.count == minsize
#    once that's done, return array
#
# pad would return a new array with the results of the method
#

#
#
#
#

#Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
       array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.concat(array)
  if new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    return new_array
  end
end

# 3. Refactored Solution
=begin
def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    return new_array
  end
end
=end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

Yes, we accomplished a step by step process that addressed the problem at eact level


Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

There were some hangups that would be describe by the trite addage, "Easier said than done."  By attacking the problem at each level, we could see what was happening step by step.  However, the difficulties were trying to figure out how to get each line to do what we wanted it to do, even more so when we added more code that might have interefered and caused a problem.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?



When you refactored, did you find any existing methods in Ruby to clean up your code?

Not really.  We did manage to turn 2 lines into one line.  These 2:
  new_array = []
  new_array.concat(array)
Became this:
  new_array = array.clone

How readable is your solution? Did you and your pair choose descriptive variable names?

Everything should be readable and understood at face value (more or less)

What is the difference between destructive and non-destructive methods in your own words?

Destructive: changes the content of the array ~permanently
Non-Destructive: changes the contents of the array for an alotted amount of code (usually 1 line)

=end