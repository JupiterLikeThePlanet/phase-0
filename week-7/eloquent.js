// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Jupiter";
console.log("Hello",name,"!  Let's make a triangle loop:")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var x = 7;
var y = "#"

while (x != 0){
  console.log(y);
  x -- ;
  y += "#";
  //  y = y + "#"
}

// js prompt
var food = prompt("What is your favorite food?")
console.log("Hey!", food, "is my favorite too!")

// Functions
// Complete the `minimum` exercise.

function min(num1, num2) {
  if (num1 < num2)
    return num1;
  else if (num1 == num2)
    return "Equal; no min"
  else
    return num2;
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me={
  name: 'Jupiter',
  age: 30,
  foods: ['sushi', 'schwarma', 'po-boys'],
  quirk: 'Neurosis'
};

/*
(1) Did you learn anything new about JavaScript or programming in general?

There was some history of Javascript and programming in general that I hadn't known, but the majority of the material, more or less expounded into greater detail on topics we've covered in the weeks before.  I enjoyed that.

(2) Are there any concepts you feel uncomfortable with?

At the moment, there are not.  However, I am a little worried about the liberalness of JS

(3) Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

I noticed a differecence was that Javascript has automatic type conversion, which looks like it can yield a lot of good and a lot of bad.  Another difference seems to be the use of NaN, undefined, and Infinity.  As for similarities between the languages, the comparison operators seem to have similar functions (like || and &&) and you can concatenate words.

(4) What is an expression?

It's a piece of a program that produces a value

(5) What is the purpose of semicolons in JavaScript? Are they always required?

They tell us the end of a statement and, while not always required, it might be good practice to add them anyway.

(6) What causes a variable to return undefined?

Dividing by zero, subtracting infinity from infinity, calling an empty variable, defining a variable without giving it a value.


(7) What does console.log do and when would you use it? What Ruby method(s) is this similar to?

It outputs to screen.  This is similiar to print in Ruby.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
(8) Describe while and for loops

While and for loops are actually quite similiar.  While loops execute a block of code until a condition is met (e.g. until something is true or false).  If that condition is not met it can go on infinitely.  A for loop is equivalent except that all the statements that are related to the "state" of the loop are now grouped together... and that's a line straight from the book.

(9) What other similarities or differences between Ruby and JavaScript did you notice in this section?

[a] The syntax of loops are structured differently.
[b] Comments are more like html or C
[c] Semicolons (and {}) indicate the end of a code block

(10) What are the differences between local and global variables in JavaScript?

Local are variables declared inside functions, global are declared outside of any function

(11) When should you use functions?

You can use functions as values, but also, like methods in ruby, you can use functions to execute actions

(12) What is a function declaration?

Similar to: def method (), a function declaration defines a named variable and points it to a function

(13) What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

They both are trying to call a property, but not always the same property.  Certain variables can't be accessed by dot notation.  The square brackets evaluate an expression to get the value and use the result as the property name whereas the dot notation fetches the property of value

(14) What is a JavaScript object with a name and value property similar to in Ruby?

A hash
*/