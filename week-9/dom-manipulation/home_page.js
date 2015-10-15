// DOM Manipulation Challenge


// I worked on this challenge [with: Sam Purcell].


// Add your JavaScript calls to this page:

// Release 1:
//Add the class "done" to the #release-0 div.
var rel0 = document.getElementById('release-0');
rel0.addClass = "done";



// Release 2:
//Set the display property of the #release-1 div to none.
var rel1= document.getElementById('release-1');
rel1.style.display = 'none';


// Release 3:
//Change the inner text of the <h1> tag to "I completed release 2."
var h1tag = document.getElementsByTagName('h1')[0];
rel2.innerHTML = "I completed release 2.";


// Release 4:
//Add the background color #955251 to the #release-3 div. #955251 was Pantone's (Links to an external site.) color of the year for 2015!
var rel3 = document.getElementById('release-3');
rel3.style.backgroundColor= '#955251';


// Release 5:
//Select all occurrences of class .release-4 and change the text-size to 2em.
var rel4 = document.getElementsByClassName('release-4');
var i;
for (i=0; i < rel4.length; i++)
	rel4[i].style.fontSize = "2em";

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));)

/*reflection

What did you learn about the DOM?
I'm still pretty confused by it's syntax a bit, but what I've learned is that you can grab
individual elements in a variable and manipulate them in that form.

What are some useful methods to use to manipulate the DOM?
getElementById
getElementsByClassName
.style

*/
