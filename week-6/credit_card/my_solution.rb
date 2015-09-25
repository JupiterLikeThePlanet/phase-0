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
    #["1", "2", "3", "4", "5", "6", "7", "8", "9", "1", "2", "3", "4", "5", "6", "7"]

end
    card = CreditCard.new (card_number)
    puts "Check Card: ", card.check_card

# Refactored Solution








# Reflection