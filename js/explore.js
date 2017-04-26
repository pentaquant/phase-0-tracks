// Release 4 //

//Declare a function that takes a string as an argument
function reverse_string(str) {
//Use the built in method split to split the string argument into seperate chars in an array
  var split = str.split("");
//Use the built-in method reverse to reverse the characters within the array
  var reverse = split.reverse();
//Use the built-in join to join the items in the array to create a string.
  var join = reverse.join("");
// return the join variable to show the reversed argument
  return join
}

reverse_string("hello");

// Release 1 // Three differences between conditionals between ruby and javascript
// 1. Printing a statement from conditionals must be put in curly brackets
// 2. Declaring a variable not equal within a conditional statement can be done by placing an exclamation mark before the variable
// 3. elsif is now else if. 


// Release 2 //
// 2. Javascript does not have implicit return. When you do not place return within a function, the function will return undefined.
// 3. Returns an error, most likely has to do with the fact that 
// 4. I am not sure if the code still runs, but it does not print to the console.

// var str = "Loop over me!";

// // Look at line 8:
// // (var = 0;) // setting the counter to zero
// // ...; i < str.length; // can be seen as something similar to a while loop
// // i++ is the same as i += 1 i n ruby
// // all in one tight line of code!
// for (var i = 0; i < str.length; i++) {
//   console.log(str[i]);
// }

// // declare some variables
// var currentlyLearning = "Ruby";
// var daysProgramming = 21;
// var enjoyingCoding = true;
// var biggestComplaint = null;

// // print a variable
// console.log("currently_learning has a value of " + currentlyLearning);

// // reassign a variable
// currentlyLearning = "JavaScript";

// // print the new value of the variable
// console.log("currently_learning has a value of " + currentlyLearning);


// var isOver21 = true;
// var drinksAlcohol = false;

// if (isOver21 && drinksAlcohol) {
//   console.log("Would you like a drink -- beer or wine, perhaps?");
// } else if (isOver21 && !drinksAlcohol) {
//   console.log("Can I get you an ice water, coffee, tea, or soft drink?");
// } else {
//   console.log("One Shirley Temple, coming up!");
// }

// Ruby
// # add two numbers
// def add(x, y)
//   x + y
// end

// # say hello
// def say_hello
//   puts "Hello!"
// end

// puts add(5,3)
// say_hello

// Javascript
// add two numbers
// function add(x, y) {
//   return x + y;
// }

// // divde two integers
// function divide(x, y) {
//   return x / y;
// }

// console.log(add(5,3));
// sayHello();
// console.log(divide(9,3));
