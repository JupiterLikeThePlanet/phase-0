# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."


# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# the interpreter says line 170, but it's line it's after the puts in line 16.  I have corrected the error by placing an 'end' in line 17
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
#
# 5. Where is the error in the code?
# After the puts method in line The code was initialing missing an 'end' to the 'while' loop.
# 6. Why did the interpreter give you this error?
# The while loop was not closed.

# --- error -------------------------------------------------------

def south_park()
  puts 'Ample parking day and night'
end

south_park()

# 1. What is the line number where the error occurs?
# line 38
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# :Object (NoMethodError)
# 4. Where is the error in the code?
# Starts on line 38, by not being defined
# 5. Why did the interpreter give you this error?
# A method left undefined cannot carry out an action.  It's essentially an empty shell.  It must first be defined, 'def', given parameters, '()', a body that designates an action, and an 'end' to designate when to stop.  Only then can you use the method's name alone in a line.

# --- error -------------------------------------------------------

def cartman()
  puts 'Someone get this V-chip out of me!'
end

cartman()

# 1. What is the line number where the error occurs?
# line 57
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# Object (NoMethodError)
# 4. Where is the error in the code?
# Starts on line 57, by not being defined
# 5. Why did the interpreter give you this error?
# Same as the error above, but at least this time it had '()'

# --- error -------------------------------------------------------

def cartmans_phrase()
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()


# 1. What is the line number where the error occurs?
# line 76
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# After the 2nd cartmans_phrase
# 5. Why did the interpreter give you this error?
# You should delete ('I hate Kyle') because no argument/parameter was established. Although, it could be said that because we did not have parameters/arguments set in the defined method, the issue may be that we need to establish one argument (or at least add parenthesis).  Above, I added '()'.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Kenny, you're poor.  You're poor, KENNY!")

# 1. What is the line number where the error occurs?
# Line 100
# 2. What is the type of error message?
# Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# Object (NameError)
# 4. Where is the error in the code?
# after cartman_says in line 100
# 5. Why did the interpreter give you this error?
# The method has been defined with one argument, however, when typed out on line 100, it provided only the method name and no argument.  Ergo, a statement in quotations within parenthesis was needed.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Mr. Garrison')

# 1. What is the line number where the error occurs?
# Line 117
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# line 121 in the '()'
# 5. Why did the interpreter give you this error?
# A second argument must be made to execute the method

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 136
# 2. What is the type of error message?
# `*': String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# TypeError
# 4. Where is the error in the code?
# In line 136, the order of the operation.
# 5. Why did the interpreter give you this error?
# The string (or object) must come first to be acted upon by the method.  The problem is that an object is where a method should be and you can not 'object' this action.  That is to say I can not execute 5 a 'Respect my authoritay' amount of times. However I can execute the string 5 times.
# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# Line 150
# 2. What is the type of error message?
# `/': divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError)
# 4. Where is the error in the code?
# In division part of the assigned variable
# 5. Why did the interpreter give you this error?
# Dividing by zero would assign an undefined value to the variable.  No go.  I've changed the zero to 1, but if they wanted the value to be zero, then I could multipy: 20*0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

=begin
1. What is the line number where the error occurs?
Line 166
2. What is the type of error message?
`require_relative'
3. What additional information does the interpreter provide about this type of error?
cannot load such file (LoadError)
4. Where is the error in the code?

5. Why did the interpreter give you this error?



 --- REFLECTION -------------------------------------------------------

(1) Which error was the most difficult to read?
The very first [unexpected end, expecting keyword].

(2)How did you figure out what the issue with the error was?
I removed lines of code until I narrowed the issue down to the problematic area

(3)Were you able to determine why each error message happened based on the code?
Yeah, quite easily (except the first one!)


(4)When you encounter errors in your future code, what process will you follow to help you debug?
From how I did this,  I'd say by reading the error carefully and doing research, mixed with some tinkering of code.

=end