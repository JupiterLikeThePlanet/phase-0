#
# PSEUDOCODE:
# ----------


# HINT: You can still have global/instance variables outside of a class.

# For each method...
# 1. What is the expected input, and the type of each arguement. (i.e. string, integer, etc)
# 2. What is the expected output? (This doesnt have to be a puts/return, it can also be updating or deleting something)
# 3. What are the steps to turn the input into the output?


# List all the methods in your class
# Create Hash literal "List"
# Create Add method that accepts two arguments
#  which will be used as our key/value pairs in
#  our hash
# Create Remove method that will remove a key/value pair from the hash
# Create update  method to change values in your hash
# Create method to print using p to display the list on the console


# p and puts?
# p == puts object.inspect

# puts returns/displays it as a string.
# to_s

# object.class.name
# #inspect shows an element in its raw form.


# my_array = ["apple", "banana", "pear"]

# puts my_array
# =>
# apple
# banana
# pear

# p my_array
# => ["apple", "banana", "pear"]

#Lemonade, qty: 2
#Tomatoes, qty: 3
#Onions, qty: 1
#Ice Cream, qty: 4

#Initial Solution


# @@global
# CONSTANT # This is the same as a global variable, only it cant be redefine.
# @instance # aka a "local" variable that can be shared by all methods.
# local # only usable in the 'container' / scope they are defined.
# HINT: arguements get initialized as local variables inside a method.

# @@list != list != @list

@list = {}

def add(item,quantity)
  @list[item] = quantity
end

def remove(item)
  @list.delete(item)
end

def update(item,quantity)
  add(item,quantity)
end

def print_list
  print @list
end