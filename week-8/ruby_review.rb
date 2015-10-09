=begin
# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [4] hours.



# Pseudocode
# Create a function called in_words
# Set variables for direct translation for numbers:
#       - 0-9 into direct translations to English
#       - Do the same for 10-20
#       - Set for base 10 after that: 30,40,50,60,70,80,90,100
# Set conditional statements to return concatenations of past English translations
#       - if a number is <= 20 return it's name using a hash key in words
#       - if greater than 20, but divisible by 10, return hash value
#       - if greater than 20 and not divisible by 10, split numbers and return their hash values (first digit will need to be multiplied by 10)
#
# # Initial Solution

def in_words(number)
  #define words list
  words = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11  => "eleven", 12 => "twelve", 13 => "thirteen", 14  => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "hundred"}
#start conditional with returning hash values for numbers < 20
  if number <= 20
    words[number]
#move on to converting to strings and trying to put hash values together
  elsif  number > 20
    num_string = number.to_s
#      if num_string.length > 1
    num_split = num_string.split(//)
    #creating variable for 1st number
    first_string = num_split[0]
    first_num = first_string.to_i
    base_ten = first_num * 10
    # creating variable for 2nd number
    second_string = num_split[1]
    second_num = second_string.to_i
    # add 1st and 2nd number
    word = words[base_ten] +"-"+ words[second_num]
    word
# return hash values for base 10 numbers
  elsif num_split[1] == 0  #> could probably use modulus here
      whole = num_split.join
      words[whole.to_i]
  else
    print "Not a valid entry. Please pick 0-99"
  end

end




##### DRIVER CODE ########################################

puts in_words(99)
puts in_words(2)
puts in_words(20)
puts in_words(31)







# Refactored Solution ########################################################

# def in_words(number)
#   words = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11  => "eleven", 12 => "twelve", 13 => "thirteen", 14  => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "hundred"}
# #   string = ''
# #   words.each do |integer, name|
# #     if number.to_s.length == 1 && number/integer > 0
# #       return "#{name}"
# #     #elsif integer

#   str = ""
#   words.each do |int, name|
#     if number == 0
#       return str
#       elsif number.to_s.length == 1 && number/int > 0
#       return str + "#{name}"
#     elsif number < 100 && number/int > 0
#       return str + "#{name}" if number%int == 0
#       return str + "#{name} " + in_words(number%int)
#     elsif int/num > 0
#       return str + in_words(number/int) + " #{name} " + in_words(number%int)
#     else
#       print "Not a valid entry. Please pick 1-99"
#     end
#   end
# end




##### DRIVER CODE ########################################

#puts in_words(99)
#puts in_words(4)
#puts in_words(20)
#puts in_words(31)


=begin
#Reflection

(1)What concepts did you review or learn in this challenge?
Iterating over hashes, creating a funtion, using conditionals


(2)What is still confusing to you about Ruby?
Nothing based on this excercise.  I just needed to freshen up on the skills


(3)What are you going to study to get more prepared for Phase 1?
I actually need to brush up on Classes before I get there


=end