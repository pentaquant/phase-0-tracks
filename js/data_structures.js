// RELEASE 0: WORK WITH ARRAYS //
var colors = ["blue", "red", "green", "yellow"]
var names = ["Skippy", "Slappy", "Stinky", "Mule"]

colors.push("pink");
names.push("Strinky");

// RELEASE 1: BUILD AN OBJECT //

function newObject {
  return {};
}

for (i = 0; i < names.length; i++) {
  console.log("This horses name is" + " " + names[i] + "," + "and has a color of" + " " + colors[i] + ".");
  newObject(names[i]) = colors[i];
}

return newObject();

// RELEASE 2: BUILD MANY OBJECTS USING A CONSTRUCTOR //

//function Car(model, type, IsGoodCar) {
//  console.log("Our car is:", this);
//  this.model = model;
//  this.type = type;
//  this.IsGoodCar = IsGoodCar;
//
//  this.start = function() { console.log("Engine //roar!"); };
//
//  this.brake = function() { console.log("Brakes //are good!"); };
//
//  console.log("CAR INITIALIZATION COMPLETE");
//}
//
//console.log("Car details are:")
//var oneCar = new Car("Ford", "Explorer", true);
//console.log(oneCar);
//console.log("Our car can start:");
//oneCar.start();
//console.log("------")
//
//console.log("Car details are:")
//var secondCar = new Car("Tesla", "S", false);
//console.log(secondCar);
//console.log("Our car can brake:");
//oneCar.brake();
//console.log("------")