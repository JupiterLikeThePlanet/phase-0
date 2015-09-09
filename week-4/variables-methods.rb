puts "What is your first name?"
first = gets.chomp

puts "What is your middle name"
middle = gets.chomp

puts "What is your last name"
last = gets.chomp

puts "Hello, " + first + " "+ middle +" "+ last + ".  That is a fine name, by the way."

puts "What is your favorite number?"
num1 = gets.chomp
num2 = num1.to_i+1
puts 'Might I suggest ' + num2.to_s + ' as a better number.'

=begin
(1) How do you define a local variable?
A local variable is one that is set to a value at one point and can be expected to change throughout a program as it gets bigger and executes more line of code


(2) How do you define a method?
Like such:
def method (argument)
  body
end

But if you're asking for an actual definition, I would say its an action to be executed, most often upon an object

(3) What is the difference between a local variable and a method?
A method generally is a short hand to execute many lines of code in a simple way.  A local variable is generally used to store a value (be it int, float, string).


(4) How do you run a ruby program from the command line?
he correct format to do so would be: >>> ruby file_name.rb

(5)How do you run an RSpec file from the command line?
One way to do it is as such:
>>> rspec file_name.rb

Or the better practice would be:
>>> rspec spec_file.rb

(6) What was confusing about this material? What made sense?
I'm still trying to understand how the rspec works and what it is doing exactly.


=end