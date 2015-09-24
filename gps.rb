# Your Names
# 1) Marcus
# 2) Jupiter

# We spent [1.5] hours on this challenge.

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  if menu[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #library[item_to_make]
  # assigning serving_size as the value of the array item_to_make
  #   and returning as an array
  # serving_size_mod set as remainder of order_quantity divided by
  #   serving_size
  serving_size = menu[item_to_make]
  excess_serving = order_quantity % serving_size
  # When serving_size_mod is 0 it returns the amount of the item it'll make
  if excess_serving == 0
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{excess_serving} leftover people to serve."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

=begin

(1) What did you learn about making code readable by working on this challenge?
You want to get rid of superfluous tasks and make the lines easily readible (reflect real langauge as much as possible)

(2) Did you learn any new methods? What did you learn about them?

I learned about case and how it deals with large amounts of if/else conditionals.


(3) What did you learn about accessing data in hashes?
You got to be careful how you iterate them or they can become an array.  As far as accessing the hashes themselves, I see the efficiency of using a key (especially because of it's uniqueness) because it can shorten code for accessing an index in an array


(4)What concepts were solidified when working through this challenge?
I got a lot of practice in reading other people's code which gave me a good idea of how to try and make things simpler for other people to read.

=end