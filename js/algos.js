//
// 7.3 solo algorithm practice
//

// function that takes array of words or phrases
//  and returns longest word or phrase in the array
//

var test_array = ["long phrase","longest phrase","longer phrase"];

//
//   using the above array the function should
//   return "longest phrase"
//
// initialize variable longest_entry=""
// loop through each element of the array
//    if longest_entry.length < current element.length
//        longest_entry=current element
//
//  return longest_entry

function longest(array) {
  var longest_entry="";

  for (var i=0;i<array.length;i++) {
    if (longest_entry.length<array[i].length) {
      longest_entry=array[i];
    }
  }
  return longest_entry;
}

function share_key_value(x,y){
  // compare two objects to see if they share
  // at least one key->value pair

  for (var key in x) {
    console.log(key,x[key],y[key]);
    if (x[key]==y[key]) {
      console.log(key,x[key],y[key]," matches.");
      return true;
    };
  }
  return false; // no match found
}

console.log(longest(test_array));

test_array = ["a","aa","aaa",
              "aaaa","aaaaa"];
              
console.log(longest(test_array));

test_array = ["aaaaa", "aaaa","aaa",
              "bbbbbbbbb","cccc","ccccc"];

console.log(longest(test_array));


test_object = {
  name: "Tamir",
  age: 54
}

test_object_2 = {
  name: "Steven",
  age: 54
}

test_object_3 = {}

console.log(share_key_value(test_object,test_object_2));
console.log(share_key_value(test_object,test_object_3));