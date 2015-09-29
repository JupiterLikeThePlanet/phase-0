// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jupiter Baudot.

// Pseudocode
// return the final number as string, with commas
// If the number is < 1000 print the number
// If the number is > 1000,
// Reverse the number
// Break down the number into chunks of 3
// insert a comma at the end of each chunk, when joining them together
// reverse the number back to original order
// return number as a string


// Initial Solution
// function separateComma(number) {
//   if (number < 1000) {
//     return number;
//   }
//   else {
//     var number = number.toString().split('').reverse();
//     var answer = [], size = 3;

//     while (number.length > 0)
//       answer.push(number.splice(0, size),',');

//     answer = number.concat.apply(number,answer).reverse();
//     answer.shift();
//     answer = answer.join('');
//     console.log(answer);
//   }

// }

// Driver CODE
separateComma(123456);

// Refactored Solution
function separateComma(number) {
  if (number < 1000) {
    return number;
  }
  else {
    var number = number.toString().split('').reverse();
    var answer = [];

    while (number.length > 0)
      answer.push(number.splice(0, 3).join(''));

    answer = answer.join(',').split('').reverse().join('');
    console.log(answer);
  }

}



// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// Actually, I approached it from the perspective of ruby.  I knew it wasn't going to be the same, but I figured aspects would be similiar.  So I knew what I wanted to do, but seek the js equivalent

// What did you learn about iterating over arrays in JavaScript?

// We didn't iterate over arrays for our answer

// What was different about solving this problem in JavaScript?

// Trying to find out which methods were the same and which were different.  Same had the same names, but did different things (e.g. slice)

// What built-in methods did you find to incorporate in your refactored solution?

// This was actually closer to my ruby solution.  But where we used this statement in ruby: 'return x.reverse.each_slice(3).map {|a| a.join}.join(',').reverse', I used this in js:answer.join(',').split('').reverse().join('')