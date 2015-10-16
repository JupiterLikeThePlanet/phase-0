# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# 
# create a conditional with OR operator
# ---> use recognition formula 5x**2 + 4 = perfect square || 5x**2 - 4 = perfect square
# create a code block for Math.sqrt() that == 0 to prove perfect square
#
#
#
#
# Initial Solution

def is_fibonacci?(num)

  value1 = (num)**2 * 5 + 4
  sqrt1 = Math.sqrt(value1)
#  puts "1: ", sqrt1
  
  string1 = sqrt1.to_s
  if string1.length < 4 && string1[2] == "0"
    square_root_1 = string1.to_i
  else
    square_root_1 = string1.to_f
  end
    
    
  value2 = (num)**2 * 5 - 4
  sqrt2 = Math.sqrt(value2)
#  puts "2: ", sqrt2
    
  string2 = sqrt2.to_s
  if string2.length < 4 && string2[2] == "0"
    square_root_2 = string2.to_i
  else
    square_root_2 = string2.to_f
  end
  
  if square_root_1.is_a?(Fixnum) == true || square_root_2.is_a?(Fixnum) == true
    puts "Yes, that number is part of the Fibonacci sequence!"
  else 
    puts "No, that number is not part of the Fibonacci sequence."
  end


end



# Refactored Solution







# Reflection

#What concepts did you review in this challenge?
#I actually enjoyed learning more about the MATH methods.  Hadn't used sqrt before.  I happen to find math fun so
# I liked reviewing over the operators and trying to make the formula work.  


#What is still confusing to you about Ruby?
# Nothing has me too stumped.  I could understand Classes better, particularly accessing variables outside of classes.


#What are you going to study to get more prepared for Phase 1?
# I'm going to review more jQuery and Ruby Classes


