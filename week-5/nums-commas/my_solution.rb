# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

###### What is the input?
#Integers
###### What is the output? (i.e. What should the code return?)A string (that is a number) seperated by a comma after every 3rd number
###### What are the steps needed to solve the problem?
# Define a method separate_comma
# => establish an argument that takes numbers
# => convert number to a string
# => create conditional statement (if/else)
#     IF number.length > 3
#       convert to array
#       push comma(s) in appropriate place
#       reassemble array into single string
#       extract from array to become a single string

#     else
#       next
#     end
# end



# 1. Initial Solution
def separate_commas(num)
  if num.to_s.length >= 4
      x = num.to_s.split(//)
#    while num.to_s.length > 0
      return x.reverse.each_slice(3).map {|a| a.join}.join(',').reverse
#      num.to_s.length -= 3
#    end
  else
    return num.to_s
  end
end

# 2. Refactored Solution
=begin
def separate_commas(num)
                                  #uses the proc (&:join)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end
=end

=begin
# 3. Reflection

(1) What was your process for breaking the problem down? What different approaches did you consider?

I looked to break the argument's number to length and create a conditional based on that length.  Then I knew I needed to make the number into a string and split it into chunks of 3, adding a comma after those chunks.  Before utilizing the code about, I had tried a number of methods such as:
  .collect
  .collect_concat
  .push


(2)Was your pseudocode effective in helping you build a successful initial solution?

It was the most effective it has been, but was easier said than done because there were still some blank spaces from methods I hadn't used before like .map and how to use .join in conjucture with that method


(3)What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I eliminated most code, but the newbie was the use of a proc (:& join).  It wasn't difficult to use it and summed my code up in one line.  It's not much different to read than the one line from my first code (and whether one thinks that's easier or difficult to read, well, that's up for debate)


(4)How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?

Essentially, I tried to use conditionals, but the code I used rendered them moot.  My refactored solution sums everything up in one line.  It's slightly more readable as such.

=end