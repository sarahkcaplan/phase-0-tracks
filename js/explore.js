// PSEUDOCODE
// input: A string
// steps:
// -- Create an empty string
// -- Start at the last letter of the input string and it to the empty
// -- Move along the length of the input string until the first letter is added to the back of the new string
// output: A string

//I am unable to get this to output anything but 'undefined'
function stringReverse(inputString){
  newString = '';
  count = inputString.length -1;
  for (i = count; i < 0; i--){
    console.log(inputString[i])
    newString + inputString[i];
    return newString;
  }
};

console.log(stringReverse('hello'));