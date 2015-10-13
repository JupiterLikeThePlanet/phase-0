/*
USER STORY
I would like to be able to create a list where items can be updated and modified as needed
*/


/*
Psuedocode
- Create an object constructor
- create variable set to object literal
- make function that adds items and quantity like a property/hash
- make a function to remove item by index and another to update quantity
- console.log the new list



TASKS
Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)

Create a new list
Add the following items to your list
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
Remove the Lemonade from your list
Update the Ice Cream quantity to 1
Print out your list (Is this readable and nice looking)?

*/

var list = {};
//var list = new Array();

function add_item(item, quantity){
  list[item] = quantity;
  return list;
};

function remove_item(item){
//  return list.indexOf(item);
  delete list[item];
  return list;
};

function update_quantity(item, quantity) {
  add_item(item, quantity)
  return list;
//  list[item] = quantity;
//  return list;
};

function print(list) {
//  console.log("Here's your list: ", list) ;
  for(item in list)
    console.log(item , quantity);
};




// Driver CODE
console.log("Add items to the list")
console.log(add_item("lemonade", 2))
console.log(add_item("tomatoes", 3))
console.log(add_item("onions", 1))
console.log(add_item("ice cream", 4))
console.log(" ")
console.log("Initial list completed")
console.log(" ")
console.log("Now removing an item:")
console.log(remove_item('lemonade'))
console.log(" ")
console.log("Updating a quantity:")
console.log(update_quantity("ice cream", 1))
console.log(" ")
print(list)



/*
REFLECTION
(1) What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
This solidified creating functions and manipulating objects. 


(2) What was the most difficult part of this challenge?
Was trying to do create an object constructor for list which starts with a function.  Couldn't think of how to do it, so just translated the ruby version.



(3)Did an array or object make more sense to use and why?
I used an object, because the information seemed more fitting given the item-quantity relationship (which is more like hash and less array).
Besides that, I had problems using indexOf() when the item/quantity was set as an array (I kept getting a value of -1 for any object in the array)



*/


