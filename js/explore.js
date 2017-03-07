//
// define a function that takes a string as a parameter 
// and reverses it.
// e.g. reverse("hello") would return "olleh"
//
//  start with an empty string for the result
//  loop through each character of the string in the parm
//    add the current character to the front of the result string
//
//  return the result

function reverse(myString) {

  var result="";
  for (var i = 0; i < myString.length; i++) {
    result = myString[i]+result;
  }

  return result;
}
var out=reverse("Hello");

if (1==1) {console.log(out);}
else {console.log("Else fired");}