# Factorial

# I worked on this challenge [with: CJ Joulain ].


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  elsif number >= 1000
    return 0
  else
    return number*factorial(number-1)
  end
end

=begin

---------THIS ALSO WORKS------------------------------------
#  else
#    total = 1
#    number.downto(1) { |n| total *= n }
#    return total
#  end
_____________________________________________________________
=end







=begin
--------PseudoCode---------
def factorial(number)
Establish a conditional statement
  IF number is equal to 0
    Then return a value of one
  ELSIF number is greater or equal to 1000
    return value of 0
  ELSE
    Run through number range one through (number)
    for each 'n' in range multiply number by 'n'
    return result
  END loop
End method

--------First Try (problem: factoring, not factorial)---------
if number == 0
    return 1
  elsif number >= 1000
    return 0
  else
    return (1..number).select {|n| number % n == 0 }

  end

-------Second Try---------------------------------------------
#    return (1..number).each {|n| number *= n}

-------Third Try----------------------------------------------
#    for n in (1..number)
#      number *= n
#      return
#    end



=end

