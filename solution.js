// Use node to call the file and run in cmd line e.g. (node solution.js)
const fs = require("fs")
const elfCalories = fs.readFileSync(`${__dirname}/input`).toString().split("\n")

let calories = [];

let currentCalorieCount = 0
for (let elfCalorie of elfCalories) {
    if (elfCalorie == "") {
        calories.push(currentCalorieCount);
        currentCalorieCount = 0
    } else {
        currentCalorieCount += +elfCalorie;
    }
}
calories.push(currentCalorieCount)

calories.sort((a, b) => (b-a));
console.log(Math.max(...calories));
console.log(Math.max(calories[0] + calories[1] + calories[2]));