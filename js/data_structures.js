
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

//
// release 2
//

// 
// constructor function for a Car
//  properties
//    color
//    make
//    model
//    year
//
//    honk function 
//    start_engine
//

function Car(color,make,model,year) {

  this.color = color;
  this.make = make;
  this.model = model;
  this.year = year;

  this.honk = function() { console.log("BEEEP!");};

}

var anotherCar = new Car("blue", 
                          "BMW",
                          "740",
                          2016);
console.log(anotherCar);
anotherCar.honk();

var yetAnotherCar = new Car("purple",
                            "Mercedes Benz",
                            "S-series",
                            2017);
console.log(yetAnotherCar);
yetAnotherCar.honk();