=begin
# 0. Pseudocode
###### What is the input?

An array of names

###### What is the output? (i.e. What should the code return?)

Multidimensional arrays

###### What are the steps needed to solve the problem?

(METHOD 1)
Create a variable with names in it
Break groups into chunks, perhaps using split
Assign to an index that will make for a group
    sort into variable names
    select based on a criteria like name length or alphabetical order


=end


bobolinks = ['Shunqian Luo', 'Caroline A.', 'Kim Allen','Jenna Andersen','Pamela Antonow', 'Jupiter Baudot', 'Laura C.','Ovi Calvo', 'Awilda Cantres', 'Celeste Carter', 'Mike Cerrone', 'Eunice Choi', 'Un Choi','Kristie Chow', 'Regina Compton', 'John D.', 'Katy D.', 'Marcus Davis', 'Kim Allen', 'Paul Etscheit', 'Solomon Fernandez', 'Kai Huang','CJ Joulain','Christopher Mark', 'Nathan Park', 'Rosslyn Sinclair-Chin','Shawn Watson', 'Nicholas Yee', 'Aji Slater', 'Marvy Tagala', 'George Wambold', 'Hana Worku', 'Caitlyn Y.','Raj S.', 'Samuel Frederick Purcell']

########################## ATTEMPT ONE ###################################

def group(array)
  squid = []
  octopi = []
  nautali = []
  cuttlefish =[]
  argonauta = []
  bobtail = []
  x = array.sort_by {|name| name.length}
  x.each_slice(4).map {|a| a.join(', ')}

    squid << x[0..3]

    octopi << x[4..7]

    nautali << x[8..11]

    cuttlefish << x[12..15]

    argonauta << x[16..19]

    bobtail << x[20..23]

  p "There are 6 groups. Which group listing would you like to see? [squid, octopi, nautali, cuttlefish, argonauta, bobtail]"
  acct = gets.downcase.chomp
  if acct == 'squid'
    puts "Listing for group SQUID is: #{squid.join(', ')}"
  elsif acct == 'octopi'
    puts "Listing for group OCTOPI is: #{octopi.join(', ')}"
  elsif acct == 'nautali'
    puts "Listing for group NAUTALI is: #{nautali.join(', ')}"
  elsif acct == 'cuttlefish'
    puts "Listing for group CUTTLEFISH is: #{cuttlefish.join(', ')}"
  elsif acct == 'argonauta'
    puts "Listing for group ARGONAUTA is: #{argonauta.join(', ')}"
  elsif acct == 'bobtail'
    puts "Listing for group BOBTAIL is: #{bobtail.join(', ')}"
  elsif acct == 'all'
    puts "Listing for group SQUID is: #{squid.join(', ')}"
    puts "Listing for group OCTOPI is: #{octopi.join(', ')}"
    puts "Listing for group NAUTALI is: #{nautali.join(', ')}"
    puts "Listing for group CUTTLEFISH is: #{cuttlefish.join(', ')}"
    puts "Listing for group ARGONAUTA is: #{argonauta.join(', ')}"
    puts "Listing for group BOBTAIL is: #{bobtail.join(', ')}"
  end
end

##########################################################################
##########################################################################
##########################################################################
########################## ATTEMPT TW0 ###################################
def group(array)
  x = array.sort_by {|name| name.length}
  y = x.each_slice(4).map {|a| [] << a.join(', ')}
  print "Enter a numeric value starting from 0 to see group roster: "
  num = gets.chomp
  print y[num.to_i], " is in group #{num}."
#  if num < y[..]
#    print y[num.to_i], " is in group #{num}."
#  else
#    puts "Try a smaller number"
#  end
end




############################ REFLECTION ##################################
=begin
(1) What was the most interesting and most difficult part of this challenge?

I enjoyed the free range of creativity, but I understand that it's core parts are craft.  It was difficult to create conditionals that would continue you us through the loop until a valid response was hit (I'm sure I could have done it, but I needed to move on)

(2) Do you feel you are improving in your ability to write pseudocode and break the problem down?

Eh, probably.  I could have done better for this exercise.


(3) Was your approach for automating this task a good solution? What could have made it even better?

Applying conditonals and loops for invalid responses could have made this better

(4) What data structure did you decide to store the accountability groups in and why?

Multidimensional Arrays because I could call upon the index numbers (which become group names [eg group 1,2,..]).  This allowed for infinite number of groups

(5) What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

More so I just practiced what we've already learned.  We are taking in a ton of info and I felt it better to hone in on previous material so I could understand it better.


=end