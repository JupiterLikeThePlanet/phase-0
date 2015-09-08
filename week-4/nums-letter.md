#What does puts do?

Puts prints the output to the console with a new line under it

#What is an integer? What is a float?

An integer is whole numbers.  Any whole number.  Let's take a look at some examples:
    (1) 3
    (2) 486
    (3) -89

Floating numbers are one with decimals. So something like:
    (1) 0.001
    (2) 73.89990909
    (3) 23.5

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division will give you a precise number.  So let's look at this:
    9/2 = 4.5
Yeah, that's a solid, precise answer.  We like these kinds of numbers for science, stats, etc.

In contrast, integer division will only return integers.  The same problem will return a different result:
    9/2 = 4
Wha wha what!?  Yeah, sort of trippy, huh?  But the thing is they're looking to return an answer for real situations in which there are not fractional answers.  'Learn To Program' provides an excellent example.  You've only got 9$ and you want to see a movie.  A movie costs 2$.  How many movies can you see? Four would be the right answer.  Not 4.5.  No that won't do.  So there's a real world example of integer division.

#Mini Challenge

'''ruby
hours = 24
year = 365

yearhours = hours * year

puts 'Hours in a Year: ', yearhours

minutes = 60

daymins = minutes * hours

decmins = daymins * (year*10)

puts "Minutes in a Decade: ", decmins
'''

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?

How does it handle? I'm not sure I understand the wording of this question, but it seems to handle mathmatical operations like a simple calculator.

#What is the difference between integers and floats? What is the difference between integer and float division?

Already answered. See above

#What are strings? Why and when would you use them?

Strings are characters or numbers between apostrophes( either '' or ""):
    (1) 'a'
    (2) '12'
    (3) "rubber baby buggy bumpers"
When you see a number as a string, it does not have the value of an integer or float number: 12 and '12' are not the same thing.

Strings are good to use when wanting to print statements, for example.

#What are local variables? Why and when would you use them?

Local variables are those declared in on a local scope in a block:
    min = 60
    hour = time * 1
    puts hour
'min' is the local variable.

#How was this challenge? Did you get a good review of some of the basics?

It was good to breeze over this stuff to be certain how well I knew it. It was quite simple though as I have had previous programming experience.

#Challenge Solution Links

    (1) https://github.com/JupiterLikeThePlanet/phase-0/blob/master/week-4/defining-variables.rb

    (2) https://github.com/JupiterLikeThePlanet/phase-0/blob/master/week-4/simple-string.rb