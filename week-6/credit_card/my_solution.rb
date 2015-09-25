# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Jupiter].
# I spent [#] hours on this challenge.

# Pseudocode
=begin
# Input: 16 integers
# Output: An integer divisible by 10
# Steps:
- Confirm that argument is an integer of 16 digits in length, if not, raise ArgumentError
- Double the even indices
-Split any number that is 2 digits long into 2 seperate integers
- Sum the odd indices with the even indices
- Execute a modulus of 10 with no remainder
=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
###########################################################
######## ATTEMPT ONE ######################################
###########################################################
=begin
card_number = 1234567891234567

class CreditCard

  def initialize(card_number)
    if card_number.kind_of?(Integer) && card_number.to_s.length == 16
      @card_number = card_number
    else
      raise ArgumentError.new("Put in the right card number, you thief!")
    end
  end

  def check_card()
     @card_number.to_s.split(//).map! {|element| element.to_i}
   p "Map print: ", @card_number.map.with_index do |value, index|
       if index.even?
        value * 2
       else
        value
       end
    end
    end


end
    card = CreditCard.new (card_number)
    puts "Check Card: ", card.check_card
=end
###########################################################
######## ATTEMPT TWO ######################################
###########################################################


class CreditCard

  def initialize(card_number)
    raise ArgumentError.new("Invalid Card Number") unless card_number.kind_of?(Integer) && card_number.to_s.length == 16
      @card_number = card_number
  end

  def check_card
     @strings_in_arr = @card_number.to_s.split(//)
     @integers_in_arr = @strings_in_arr.map {|element| element.to_i}
     @unsummed_arr = @integers_in_arr.each_with_index.map {|x, i| i.even? ? (x*2) : x}
     # Note explaining the block: if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
     @large_int = @unsummed_arr.join

     @indiv_str_arr = @large_int.split(//)
     @indiv_int_arry = @indiv_str_arr.map {|element| element.to_i}
     @final_sum = @indiv_int_arry.inject {|sum, n| sum + n}
     # Note: Inject is a binary operation aka A binary operation is simply a rule for combining two objects of a given type, to obtain another object of that type. Inject can take an argument, which would become sum. However, in the case inject does not take an argument, sum is initially equal to zero, then gradually becomes a summation of all elements found in the enumerable.
     # 74
     @final_sum % 10 == 0
  end
end

#card_number = 1234567891234567
#card = CreditCard.new(card_number)
# Refactored Solution







=begin
# Reflection
(1) What was the most difficult part of this challenge for you and your pair?

Understading the use of .each_with_index method and how to retain the changes within variables across multiple lines of code


(2) What new methods did you find to help you when you refactored?

.each_with_index method

(3) What concepts or learnings were you able to solidify in this challenge?

I really got a handle on the .each_with_index method and using multiple variables to retain changes and continue manipulating the information within them


=end