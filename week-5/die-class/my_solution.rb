# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [4] hours on this challenge.
=begin
# 0. Pseudocode

# Input: instance var. and methods
# Output: A Die class with an argument that can roll
# Steps:
-The die has to have sides so establish a constructor with an argument for sides
-assign conditional for sides < 1 (Error msg)
-assign instance variable
- for sides also establish an instance var.
- Create a shuffle for the number of sides in method roll
=end
# 1. Initial Solution

class Die

  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Number of sides must be non-zero integer")
#    elsif sides = sides.float
#      raise ArgumentError.new("Number of sides must be non-zero integer")
    else
      @sides=sides
    end
  end

 def sides
    @sides
#   unless @sides == 0
#     [] << @sides-=1
#    end
  end


  def roll
#    unless @sides == 0
#     [] << @sides-=1
#    end
    rand(@sides.to_i) + 1
#    @sides.shuffle
#    return sides.first.to_i
#  end
  end
end



# 3. Refactored Solution
# At the moment there was no time to refactor



=begin
# 4. Reflection

(1)What is an ArgumentError and why would you use one?

An argument error is a message that comes up when a condition is or isn't met that would be required to execute a program correctly.  Having one pop up should guide the user to what the issue is and direct them to the place to solve (and maybe even how, if only slightly explicit)

(2)What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

rand
raise
ArgumentError

The latter 2 were simple. The challenge was seeking out to use rand


(3)What is a Ruby class?

It's my impression that a class is a top tier object designed to be consisted of properties and methods that can be attached and called upon by the elements within it.

(4)Why would you use a Ruby class?

To be able to create objects and attach properties and methods to them allowing for shorthand use/ convenience or tailor objects to a developer's need

(5) What is the difference between a local variable and an instance variable?

An instance variable is attached to any method within a class.
A local variable is attached to only what it is being used immediately for.

(6) Where can an instance variable be used?
They can be used in the constructors and methods within a class

=end