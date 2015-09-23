=begin
You will have 2 classes, NameData and Greetings. NameData will initialize a @name variable with your name. Greetings will initialize an instance of NameData and include a method to display a salutation to the console.

It should look something like this:

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."
=end

#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.


class NameData

 attr_reader :name

 def initialize(name)
  @name = name
 end

end



class Greetings

  def initialize
    @new_name = NameData.new(@name)
  end

  def greet
    puts "Greetings #{@new_name}!"
  end

end


=begin
# Release 1
-- What are these methods doing? How are they modifying or returning the value of instance variables?
The first methods are calling upon instance variables set up in instance methods and puts them out.  The instance variables are then assigned new values through a setter method which gives a local variable a value (which is passed to the i.v.). This, of course, is all being changed once a variable is being set to Profile.new


# Release 2
(a) What changed between the last release and this release?
[attr_reader :age] appeared

(b) What was replaced?
The what_is_age instance method was replaced by an attribute which summed up the same code in 1 line

(c)Is this code simpler than the last?
It's debatable whether it's cleaner (I think it is, knowing what it does, but if you didn't ...well, there's your argument), but yes it's simpler and more efficient.

# Release 3
(a) What changed between the last release and this release?
attr_writer :age

(b) What was replaced?
Replaced the setter method for change_of_age


(c) Is this code simpler than the last?
Yes, same answer as before

# Reflection

(1) What is a reader method?
It takes something like this:
  def taste
    @taste
  end
And sums it up into this:
  attr_reader :taste
This allows the value to be returned outside of the class, but doesn't change it (Like a cd or file that's read only!)


(2) What is a writer method?
A write method allows for a value to be changed from outside of a class, but it can't be read.  Shortens a setter method:
Setter: def change(new_taste)
            @taste = new_taste
        end
to
Writer: attr_writer :taste


(3) What do the attr methods do for you?
Shorten code, use symbols, become more efficient, and are easier to read through


(4)Should you always use an accessor to cover your bases? Why or Why not?
Apparently not because it can easily allow our data to change (not good if that's unintended)


(5)What is confusing to you about these methods?
Learning about what instance variables are and how they're tied to the class and then being told about how we can access/change them from outside the class


=end