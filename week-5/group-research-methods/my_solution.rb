# Person 3
####################Psuedocode##############################
#####Alphabatize##########
# Define a method that takes a list of names as a parameter
#    Convert integers to strings in order to compare them with other strings
#    Use .sort to iterate through the array and alphabetize
# end
#
########Hash#############
# Define a method that takes a list of names and ages as a parameter
#   append list into a new hash
#   use a sort method to order by value


def my_array_sorting_method(array)
  return array.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(my_family_pets_ages)
  my_family_pets_ages.sort_by {|key,val| val}
end

# I spent [3] hours on this challenge.
# Took so long because apparently I hadn't copied the require_relative "my_solution" to my spec doc.  DROVE ME CRAZY!



=begin
# Identify and describe the Ruby method(s) you implemented.
This code was quite simple and used 2 methods:
(1) .sort_by
(2) .to_s

For the array method, the elements of the array had to be the same class in order to be compared, hence the use of .to_s.  I used the sort_by method because it mapped the values and sorted them in their order by placement in ASCII

For the hash method, it was similar.  Except when sorting through the argument, I entered value in the block to be the means by which the elements would be sorted
=end