var colors = ["red", "green", "yellow", "blue"];
var names = ["Dixie", "Belle", "Molly", "Loretta"];

colors.push ("purple");
names.push ("Jack");

console.log(names, colors);

var horses = {}
for (var i=0; i<names.length; i++) {
  horses[names[i]] = colors[i]
}

console.log(horses)

function Car(color, year, model, fast) {x
  console.log("Check out this new car: ", this);
  this.color = color;
  this.year = year;
  this.model = model;
  this.fast = fast;
  this.honk = function () {console.log("Honk"); };
};

var newCar = new Car("Yellow", 1994, "Jeep", false);

var anotherCar = new Car("Pink", 2000, "Hyundai", true);

var tonka = new Car ("Blue", 1975, "Ford", false);

console.log(newCar, anotherCar, tonka);
newCar.honk();
anotherCar.honk();
tonka.honk();
