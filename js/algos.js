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

function random_words(length) {
  //
  // build an array with length random words
  //
  // - words don't have to be real words
  // - words are of random length min 1, max 10
  // - random number algorithm from google search for random
  //      Math.floor((Math.random() * 10) + 1);
  // - use random to pull letters from alphabet string
  //

  var result=[];
  var word_length=0;

//  console.log("array length",length);

  for (var i = 0; i < length; i++) {
    // build up each word of the array
    word_length=Math.floor((Math.random()*10)+1);
    result[i]=random_word(word_length);
  }
//  console.log(result,result.length);
  return result;
}
function random_word(length) {
  var alphabet="abcdefghijklmnopqrstuvwxyz";
  result="";
  for (var i = 0; i < length; i++) {
  
    alphabet_random=Math.floor((Math.random()*26));
    result+=alphabet.charAt(alphabet_random);
  }
//  console.log(length,result);
  return result;
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
//
// check to see how method handles empty object and failure
//
console.log(share_key_value(test_object,test_object_3));

random_words(5);
random_words(15);

// 
// do the following 10 times
//    generate array
//    print array
//    get longest word and print
//

var array_length=0;
var words=[];

for (var i = 0; i < 10; i++) {
  array_length=Math.floor((Math.random()*10)+1);
  console.log("\n array of length:",array_length);
  words=random_words(array_length);
  console.log(words);
  console.log("longest word:",longest(words));
}