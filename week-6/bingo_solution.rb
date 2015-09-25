# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create 2 arrays (or place the second array within the first?) & randomize the contents

# Check the called column for the number called.
  # create an and statement where the conditions have to meet with the letter called and the value of the index

# If the number is in the column, replace with an 'x'
  #create a conditional where the value to be replaced by the x is matched with the index.
  #create a new variable to replace the element

# Display a column to the console
  #Have letter correspond to index value

# Display the board to the console (prettily)
  #print the board

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


  def select
    @select_letter = ['B','I','N','G','O'].shuffle.first
    @select_number = rand(1..100)
    print "#{@select_letter}-#{@select_number}!"
  end

   def mark_board
    @bingo_board.map do |element|
#      p element[1]
#    end
#   end
      if @select_letter == "B" && element[0] == @select_number
        element[0] = 'x'
#         @bingo_board
      elsif  @select_letter == "I" && element[1] == @select_number
        element[1] = 'x'
#         @bingo_board
      elsif  @select_letter == "N" && element[2] == @select_number
        element[2] = 'x'
#         @bingo_board
      elsif  @select_letter == "G" && element[3] == @select_number
        element[3] = 'x'
#         @bingo_board
      elsif  @select_letter == "O" && element[4] == @select_number
        element[4] = 'x'
#         @bingo_board
      else
        @bingo_board
      end
    end
     print @bingo_board
  end


end

# Refactored Solution

=begin
@bingo_board.collect do |number|
if @select_letter == "B" and (number[0] == @select_number)
number[0] = "X"
@bingo_board.each { |element| p element}
puts "#{@select_letter}-#{@select_number} is a hit!"
=end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

100.times do

  new_game.select
  p new_game.mark_board

end

=begin
#Reflection
(1) How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was pretty tough, I had to keep it general... and, of course, I deviated a bit.  I think of it as a 1st draft, a prototype.  It could use some improvement and a vocabulary boost

(2) What are the benefits of using a class for this challenge?

Because the use of instance variables between methods makes it easier to keep track of and execute value we need for more complex (or nuanced) code.


(3) How can you access coordinates in a nested array?

By iterating through the individual elements in each array [This is where conditional, operands, and .map came in use]

(4) What methods did you use to access and modify the array?
Methods:
.map

What else?:
if/else
local and instance variables
== and && operands


(5) How did you determine what should be an instance variable versus a local variable?
How? Through working it out!  I mean, the big variables that are to be moved from method to method make sense to make them i.v.'s.  However the iterations of i.v.'s makes sense to be local.


(6)What do you feel is most improved in your refactored solution?

Not much, I had a tough time trying to trim the code within a reasonable time frame.  I just tried to refactor the conditionals in a way that would maybe bring it to 4 lines....but to no avail


=end