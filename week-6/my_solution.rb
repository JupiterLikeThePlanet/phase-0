# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
=begin
# Input: sides of a die (in an array)
# Output: one side of the die (one element randomly from array)
# Steps:
 -initialize an instance variable for the object's start (@sides)
 -Label the sides (putting them in an array)
 -use a method to randomly return one of the elements in the array


=end
# Initial Solution
class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new ("Please enter elements in an array")
    else
#      labels = Array.new
      return @labels = labels
    end
    return Die.sides
  end

  def sides
    @sides = @labels.length

#    return @sides
#    return Die.sides
  end

  def roll
#    p @label[@sides]
#    rand(@sides)
    @labels[rand(@sides)]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new ("Please enter elements in an array")
    else
      return @labels = labels
    end
    sides
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @labels[rand(@sides)]
  end
end





=begin
# Reflection
(1) What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The labels and the sides are two different types of information in this exercise.  Labels don't have to be an integer, it can be anything we want (and we're putting it in an array).  Ergo sides is more about indicating the indices to call a particular label.  Implementation of this became different because I ended up having to call my class with the sides method within the initialize method, for example

(2) What does this exercise teach you about making code that is easily changeable or modifiable?

Well, I can't answer this because I didn't find this easily changeable or modifiable without the output being affected.

(3) What new methods did you learn when working on this challenge, if any?

n/a
[I used only methods I had previously learned.]


(4) What concepts about classes were you able to solidify in this challenge?

A better understanding of instance variables and how defined methods within a class can possibly rely on another method being called to have a value.


=end