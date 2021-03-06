/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


var gradebook = {
    Joseph: {testScores: scores[0]},
    Susan: {testScores: scores[1]},
    William: {testScores: scores[2]},
    Elizabeth: {testScores: scores[3]},
    addScore: function(name, score) {
      return gradebook[name]["testScores"].push(score);
    },
    getAverage: function(name) {
//      var nameString = String(name);
//       console.log("in function: ", gradeBook.average(name["testScores"]));
//       return name["testScores"]
//       console.log("in function: ",(name["testScores"]));
      return average(this[name]["testScores"])
    },
};

var average = function(array) {
      var sum = 0
//       var length = array.length
//       console.log (length)
      for(var i in array){
      (sum = array[i] + sum)
      };
      return sum/array.length;
    };


// gradeBook["Joseph"] = {}
// gradeBook["Elizabeth"] = {}
// gradeBook["Joseph"]["testScores"] = [80, 70, 70, 100]
// gradeBook["Elizabeth"]["testscores"] = [100, 90, 95, 85]

// console.log(gradebook.addScore("Joseph",150))
// console.log(gradebook)
//console.log(average([80, 70, 70, 100]))


// console.log("out function: ", gradebook.getAverage("Susan"))


// console.log(["Susan"]["testScores"])

/*//////Reflection////////////////////////////////////////////////////////////

(1) What did you learn about adding functions to objects?
At this point, I feel like I'm solidifying the concepts, particularly "this", control flow, and assigning funtions to variables and how that differs(or is similiar) from creating object functions

(2) How did you iterate over nested arrays in JavaScript?
For 'average' we used a 'for...in' loop

(3) Were there any new methods you were able to incorporate? If so, what were they and how did they work?
Looks like I stuck to familiar territory for this one.



*/// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



// assert(
//   (gradebook instanceof Object),
//   "The value of gradebook should be an Object.\n",
//   "1. "
// )

// assert(
//   (gradebook["Elizabeth"] instanceof Object),
//   "gradebook's Elizabeth property should be an object.",
//   "2. "
// )

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

// assert(
//   (gradebook.addScore instanceof Function),
//   "The value of gradebook's addScore property should be a Function.",
//   "4. "
// )

// gradebook.addScore("Susan", 80)

// assert(
//   (gradebook.Susan.testScores.length === 5
//    && gradebook.Susan.testScores[4] === 80),
//   "Susan's testScores should have a new score of 80 added to the end.",
//   "5. "
// )

// assert(
//   (gradebook.getAverage instanceof Function),
//   "The value of gradebook's getAverage property should be a Function.",
//   "6. "
// )

// assert(
//   (average instanceof Function),
//   "The value of average should be a Function.\n",
//   "7. "
// )
// assert(
//   average([1, 2, 3]) === 2,
//   "average should return the average of the elements in the array argument.\n",
//   "8. "
// )

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)