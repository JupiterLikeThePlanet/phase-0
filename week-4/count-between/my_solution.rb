# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  num = 0
  if list_of_integers == [] or list_of_integers == nil
    return 0
  elsif upper_bound < lower_bound
    return 0
  elsif upper_bound == lower_bound
    list_of_integers.each {|num| num +=1 }
    return num
#  elsif list_of_integers > lower_bound and list_of_integers < upper_bound
#    num = upper_bound - lower_bound
#    return num
  else
    for num in list_of_integers
      if num < upper_bound and num > lower_bound
        num += 1
        return num
      else
        next
      end
    end
  end
end

=begin
____________________First Attempt @ Code______________________
  num = 0
  if list_of_integers == [] or list_of_integers == nil
    return 0
  elsif upper_bound < lower_bound
    return 0
  elsif upper_bound == lower_bound
    list_of_integers.each {|num| num +=1 }
    return num
#  elsif list_of_integers > lower_bound and list_of_integers < upper_bound
#    num = upper_bound - lower_bound
#    return num
  else
    for num in list_of_integers
      if num < upper_bound and num > lower_bound
        num += 1
        return num
      else
        next
      end
    end
  end
end
______________________________________________________________
=end


=begin
___________________________Psuedo Code________________________
Input : An array and 2 integers
Ouput : amount of numbers in the array that fall between the range of the 2 integers

Set a total to zero to count range
Define boundaries of upper and lower bound
  Upper bound must be greater than lower bound
    or else return 0
  IF there are no #'s in an array
    return 0
  IF upper = lower
    return number in array
  IF an array is inside an array
    return the range in the array
  IF a array is between bounds
    return length of array
______________________________________________________________
=end