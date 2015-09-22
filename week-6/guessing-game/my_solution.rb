# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer (or if you're guessing integerS)
# Output: the correctly selected integer or a string that tells us if our guess is high or low
# Steps:
# - initialize the game with supplying an argument for the class that it must take have an answer randomly generated
# --- (turn guess into a symbol?)
# - define a method for guess
# --- create a conditional that returns a response based on guess
# ----- high and low, you got it!
#
#

# Initial Solution

class GuessingGame
  attr_reader :answer
  attr_writer :guess
  attr_reader :high
  attr_reader :low
  attr_reader :correct

#  :high = "That answer is too high. Guess again"
#  :low = "That answer is #too low. Guess again"
#  :correct = "#{@guess}? Why, that's absolutely correct!"

#  resp = { :high => "That answer is too high. Guess again", :low => "That answer is #too low. Guess again", :correct => "#{@guess}? Why, that's absolutely correct!" }

  def initialize (answer)
#    answer = [1..100]
#    @answer = rand(answer.to_i)
    @answer = answer.to_i
  end

  def guess(guess)
#    puts "I'm thinking of a number.  Take a guess: "
#    input = gets.chomp
    @guess = guess.to_i
        if @guess > @answer
          :high
#          puts resp[:high]
#          self.guess
        elsif @guess < @answer
           :low
#          puts resp[:low]
#          self.guess
        elsif @guess == @answer
          :correct
#          puts resp[:correct]
      end
  end


  def solved?
    if @guess == @answer
      return true
#      break
    else
      return false
    end
  end

end




# Refactored Solution  (No changes really)
class GuessingGame
  attr_reader :answer
  attr_writer :guess
  attr_reader :high
  attr_reader :low
  attr_reader :correct

  def initialize (answer)
    @answer = answer.to_i
  end

  def guess(guess)
    @guess = guess.to_i
        if @guess > @answer
          :high
        elsif @guess < @answer
          :low
        elsif @guess == @answer
          :correct
      end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end

end




=begin
# Reflection
(1) How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

They give inherit properties to an object (with initialize) and actions that an object can perform (or actions that can be performed upon the object)

(2) When should you use instance variables? What do they do
for you?

I use instance variables for any parameter that will directly affect the object.  Also, I'll return an I.V. when it must be called upon in order for other methods reliant upon the value to execute their actions.  I.V.'s allow developers to use a value across a class by staying in the memory as long as the object is around

(3) Explain how to use flow control. Did you have any trouble
using it in this challenge? If so, what did you struggle with?

Before I realized exactly what was being asked of me, I did ponder on where to put the conditionals.  But once I realized that, I was solid.


(4) Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I suppose the answer for is that it's more efficient processing.  The symbols don't have to be created anew each time they are called.

=end