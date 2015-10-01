// Warm Up



// Bulk Up

var sarah = {
name: "Sarah Hughes",
event: "Ladies' Singles",
}

var athletes = [sarah];

function addWin(arr){
for (var i=0;i<arr.length;i++) {
arr[i].win = arr[i].name + " won the " + arr[i].event + "!";
return arr[i].win;
}
}

console.log(addWin(athletes))

// Jumble your words
function jumble(words) {
  return words.split('').reverse().join('')
}

console.log(jumble("words"))

//2,4,6,8
function returnEven(numbers){
  var evens = [];
  for (var i=0; i<numbers.length; i++) {
    if (numbers[i]%2 === 0)
      evens.push(numbers[i])
  }
  console.log(evens)
}

 returnEven([123,25,6,52,3,56,54,23])

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


//Driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


/* Reflection
(1)What JavaScript knowledge did you solidify in this challenge?
Honestly, the first exercise may have caused a regression. It is hard to tell what I'm learning vs what I'm carrying over from Ruby, just translated into js.  At the current moment, my head is above water, but I'll get back to you when I reach terra firma

(2)What are constructor functions?
At face value, new looks like an instance variable or like self in class.  What seems to distinguish constructor functions from regular functions is that when you call 'new' before the function, it's a pretext to 'this' and refers it to the newly created object.
The 'this' keyword is tied to an object (either by itself or in a function).  In an object, this is the object itself and in a function it refers to the object tied to the function.


(3)How are constructors different from Ruby classes (in your research)?
Ruby uses classes to create objects, but js is classless and constructors are objects themselves.  Js will define literal objects or constructors to create objects

*/

