
//
// array of four colors
// 
var colors = [ "blue", "black", 
                "yellow", 
                "red"];

console.log(colors);
//
// array of four names
//
var names = [ "Ed", "Jose",
              "Cheval",
              "Relampago"];

console.log(names);
//
// 

colors.push("pink");

names.push("Trump");

console.log(names,colors);

//
// release 1
// 
//  create object with name->color 
//

var horses = {};

//
// loop through arrays to populate horses
//

for (var i = 0; i <names.length; i++) {
  horses[names[i]]=colors[i];
}

console.log(horses);