// // Pseudocode
// Longest phrase
// input: An array of words or phrases
// steps:
// --Compare the length of the first two items (positions 0 and 1) in the array
// --Return the item with the greater length
// --Compare the length of the returned item with the item in position 2 in the array.
// --Return the item with the greater length.
// --Continue through array until the item in the last position in the array has been evaluated.
// output:Longest word or phrase in the array

// Key-Value Match
// input: Two objects
// steps:
// 1. Take the key of the first object and compare it to the first key of the second object.
// 2. If the two keys are equal compare their values.
// 3. If those two values are equal, return true and stop the process.
// 4. If the two keys are not equal, compare the first key of the first object to the second key of the first object.
// 5. Repeat steps 2 and 3.
// 6. Continue comparing the first key of the first object to all subsequent keys of the second object until true is returned (step 3).
// 7. If true is not returned, compare the second key of the first object with all of the keys of the second object in order until true is not returned.
// 8. If all of the keys of the first object are evaluated against all of the keys of the second object and none are equivalent, return false.
// 9. If all of the keys of the first object are evaluated against all of the keys of the second object and any of the keys are equivalent but if the values of those keys are not also equivalent, return false.
// output: boolean

// Random Test Data
// input: An integer n
// steps:
// -- Create an empty array
// -- Generate a string of random letters of length 1-10
// -- Add string to array
// -- Repeat until array is length n
// output: An array of length n made up of strings


// // Release 0:
// function longerString(a,b) {
//   if (a > b) {
//     return a;
//   }
//   else {
//     return b;
//   }
// };

// function longestString(array, longString) {
//   for (i = 0; i < array.length; i++) {
//     var longString = longerString(array[i], longString);
//   }
//   return longString;
// };

// testArray = ["aaa", "aa", "a", "aaaa", "aa", "aaaaaa", "a"];
// console.log(longestString(testArray, longerString(testArray[0], testArray[1])));

// Release 1:
function keyValueMatchInner(object2) {
  var object2_keys = Object.keys(object2);
  for (m = 0; m < object2_keys; m++) {
    return object2_keys[m];
  }
};

function keyValueMatch(object1, object2) {
  var object1_keys = Object.keys(object1);
  var object2_keys = Object.keys(object2);

  for (i = 0; i < object1_keys.length; i ++){
    console.log("i: ", i)
    if (object1_keys[0] == object2_keys[i]){
      if (object1[object1_keys[0]] == object2[object2_keys[i]]){
        break;
        return true;
      }
    }
  }
  return false;
};

testObject1 = {city: "Los Angeles", month: "January", trip: "Business", airline: "United"};
testObject2 = {city: "New York", day: "Tuesday", trip: "Fun", airline: "United"};

console.log(keyValueMatch(testObject1, testObject2));


testObject3 = {city: "Los Angeles", month: "January", trip: "Business", airline: "United"};
testObject4 = {city: "New York", day: "Tuesday", trip: "Fun", airline: "American"};

console.log(keyValueMatch(testObject3, testObject4));

