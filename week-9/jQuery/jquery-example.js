// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
  //Add code here to select elements of the DOM
 var $h1 = $('h1');
$h1.dblclick(function() {
	$h1.hide();
});

var $bodyElement = $('body')
  $bodyElement.mouseover(function() {
	$bodyElement.css("background-color", "yellow");
  });

var $img = $('img')
	$img.hover(function() {
		$(this).css('border', 'solid 1px black');
	});

var

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

  $('body > h1').css("visibility","hidden");

 var $h1 = $('h1:nth-child-of(0)');
 	$h1.css("color")

//RELEASE 4: Event Listener
$(img).on('mouseover', 'function(e)') {
	e.preventDefault()
	$(this).attr('src','http://vtecostudies.org/wp-content/uploads/2014/06/bobo-flight-janet-and-phil-1800x700.jpg')
});

$(img).on('mouseout', 'function(e)') {
	e.preventDefault()
	$(this).attr(dbc_logo.png)
});


/* NOTE ^^^^^^^^^^^^^^^^^^^^
My loaner computer for some reason will open html in browser but the contents are always empty.  This has my ability to 
do the last release properly sans partner.  


////////////REFLECTION //////////////////////////////////////////////////
What is jQuery?
It's a library for javascript that expands the programming language


What does jQuery do for you?
Allows us to manipulate elements in the html and facilitates the use of javascript on a website



What did you learn about the DOM while working on this challenge?
I'll be honest, I'm still sort of confused by it.  It seems like it does what jQuery does, but in a more verbose and oddly syntactical way.


*//////////////////////////////////////////////



})  // end of the document.ready function: do not remove or write DOM manipulation below this.