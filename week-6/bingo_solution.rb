# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard


#  def initialize
#    Array.new(5) {}


  def initialize(board)
    @bingo_board = board
  end


  def select
    @select_letter = "B"
    @select_number = 22
#    @select_letter = ['B','I','N','G','O'].shuffle.first
#    @select_number = rand(1..100)
    print "#{@select_letter}-#{@select_number}!"
  end

   def mark_board
    @bingo_board.map! do |element|
      if @select_letter == "B" && element[0] == @select_number
        element[0] = 'x'
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "I" && element[1] == @select_number
        element[1] = 'x'
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "N" && element[2] == @select_number
        element[2] = 'x'
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "G" && element[3] == @select_number
        element[3] = 'x'
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "O" && element[4] == @select_number
        element[4] = 'x'
        return @bingo_board
        puts  @bingo_board
      else
        return @bingo_board
        puts  @bingo_board
      end
    end
  end


end
=begin
  def mark_board
    @bingo_board.map! do |element|
      if  @select_letter == "B" && element[0] == @select_number
#        element.collect do |index|
#          index.replace(['x'])
#        end
#          index.pop
#          index.push("x")
#        end
#        element.pop
#        element.push("x")
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "I" && element[1] == @select_number
        element.pop
        element.push ("x")
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "N" && element[2] == @select_number
        element.pop
        element.push ("x")
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "G" && element[3] == @select_number
        element.pop
        element.push ("x")
        return @bingo_board
        puts  @bingo_board
      elsif  @select_letter == "O" && element[4] == @select_number
        element.pop
        element.push ("x")
        return @bingo_board
        puts  @bingo_board
      else
        return @bingo_board
        puts  @bingo_board
      end
    end
  end

end
=end
# Refactored Solution

=begin
@bingo_board.collect do |number|
if @pick_letter == "B" and (number[0] == @pick_number)
number[0] = "X"
@bingo_board.each { |element| p element}
puts "you got it"
=end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection