 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Rock, Paper, Scissors! Beat the computer
// Overall mission: First to 5 wins
// Goals: Throw rock, paper, scissors and beat the computer each round
// Characters: Human and Computer
// Objects: Human and Computer
// Functions: Computer shoots, Human shoots, randomize computer shoots

/* Pseudocode
 - Create var human with properties of score and success
 - do the same for var computer
 - Develop function for randomized computer throw
    - create an array
    - create a function that randomizes the indices of said array
    - return value of index
  - Develop a print function to show points
  - Make function that plays game and takes user's choice as a parameter
    - create conditional statements contigent upon player and computer's choice to see who won a round
  - Console.log the results

*/

// Initial Code
var human = {
    score: 0,
    success: false
};

var computer = {
    score: 0,
    success: false
};

var options = ["rock","paper","scissors"];

function compShoot() {
 return options[Math.floor(Math.random()*(options.length-1))];
};


var comp = compShoot();

function game(hand) {
  if(hand == "scissors" && comp == "paper") {
    human.score += 1;
    console.log("Scissors beats Paper! Humans Prevail!");
  }
  else if (hand == "paper" && comp == "rock") {
    human.score += 1;
    console.log("Paper beats Rock! Humans Prevail!");
  }
  else if (hand == "rock" && comp == "scissors") {
    human.score += 1;
    console.log("Rock beats Scissors! Humans Prevail!");
  }
  else if (hand == "paper" && comp == "scissors") {
    computer.score += 1;
    console.log("Scissors beats Paper! The Machine Conquers!");
  }
  else if (hand == "rock" && comp == "paper") {
    computer.score += 1;
    console.log("Paper beats Rock! The Machine Conquers!");
  }
  else if (hand == "scissors" && comp == "rock") {
    computer.score += 1;
    console.log("Rock beats Scissors! The Machine Conquers!");
  }
  else if (hand == comp) {
    console.log("Tie game! Try again!");
  }
};

function scoreboard() {
  console.log("Human score:", human.score);
  console.log("Computer Score:", computer.score);
};

///////Driver Code///////////////////////
compShoot();
game("rock");
scoreboard();




//////////////////////////////////////////////////////////////////////
// Refactored Code ///////////////////////////////////////////////////
////Did not achieve desired affect: accumulation of points////////////
//////////////////////////////////////////////////////////////////////
/////////////////Create Player Objects //////////////////////////////
var human = {
    score: 0,
    success: false
};

var computer = {
    score: 0,
    success: false
};

////////////////// Create Computer Throw ///////////////////////////
var options = ["rock","paper","scissors"];

function compShoot() {
 return options[Math.floor(Math.random()*(options.length-1))];
};


var comp = compShoot();

function scoreboard() {
  console.log("Human score:", human.score);
  console.log("Computer Score:", computer.score);
  };

///////////////// Create game and parameter for human throw ///////////////////

function game(hand) {
  console.log("Computer Shoots: ",compShoot())
  console.log("Human Shoots: ", hand)
  if(hand == "scissors" && comp == "paper") {
    console.log("Scissors beats Paper! Point for Human!");
    return human.score += 1;
  }
  else if (hand == "paper" && comp == "rock") {
    console.log("Paper beats Rock! Point for Human!");
    return human.score += 1;
  }
  else if (hand == "rock" && comp == "scissors") {
    console.log("Rock beats Scissors! Point for Human!");
    return human.score += 1;
  }
  else if (hand == "paper" && comp == "scissors") {
    console.log("Scissors beats Paper! Point for Machine!");
    return computer.score += 1;
  }
  else if (hand == "rock" && comp == "paper") {
    console.log("Paper beats Rock! Point for Machine!");
    return computer.score += 1;
  }
  else if (hand == "scissors" && comp == "rock") {
    console.log("Rock beats Scissors! Point for Machine!");
    return computer.score += 1;
  }
  else if (hand == comp) {
    console.log("Tie game! Try again!");
  }
  scoreboard();
};



if (5 > human.score || 5 > computer.score) {
   human.success && computer.success;
}
else if (human.score === 5 && human.score > computer.score) {
  human.success = true;
  console.log("Game Over: Humans Prevail");
}
else if (computer.score === 5 && computer.score > human.score) {
  computer.success = true;
  console.log("Game Over: The Machine Conquers!");
}


///////Driver Code///////////////////////
compShoot();
game("rock");





/* Reflection
(1) What was the most difficult part of this challenge?

Thinking of a game to create, first and foremost, then the accumulation of points (meaning returning and saving of values after each game)

(2) What did you learn about creating objects and functions that interact with one another?

a] Learned a bit more about js' control flow,
b] how return can cause us not to see the function of a statement that will come after it,
c] you can assign functions to variables to make it more readable and easier to call in other parts of another function

(3) Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

a] Math.random (selects random number between 0 -1)
b] Math.floor (rounds down decimal to integer)

(4) How can you access and manipulate properties of objects?

Within other functions you can reassign values (e.g. change a boolean value of success from false to true), but also later in the control flow you can pop qualities in like so: object[property] = new value


*/
