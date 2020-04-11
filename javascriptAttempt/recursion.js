
const factorial = (n) => {
  if(n === 0) {
    return 1;
  }
  else {
    return n * factorial(n-1);
  }
}

const reverse = (s) => {
  let reverseString = "";

  for (let character of s) {
      reverseString = character + reverseString;
  }

  return reverseString
}

const bunny = (n) => {
  if(n<=0){return 0;}

  return 2 + bunny(n-1);
  }

const nested = (s) => {
  if(s.length===0){return true;}
  if(s.length % 2 !== 0){return false;}

  if (s.split("").filter(letter => letter === "(").length === s.split("").filter(letter => letter === ")").length) {
    return true
  };

  return false
}

const search = (array,value) => {
  if(array.length === 0){return false;}

  return searchHelper(array,value);
}

const searchHelper = (array, value, currentIndex = 0) => {
  if(currentIndex===array.length){return false;}
  if(array[currentIndex] === value){return true;}

  return searchHelper(array, value, currentIndex + 1);
}

const isPalindrome = (word) => {
  if(word.length < 2){return true;}

  let first = word[0];
  let last = word[word.length - 1];
  let smaller = word.substring(1, word.length - 1);
  
  if (first === last) {
    return isPalindrome(smaller);
  } else {
    return false;
  }
}

// const digitMatch = (n, m) => {

//   if(n === 0 && m === 0){return 1;}
//   let count = null;

//   if(n[-1] === m[-1]){count += 1;}
//   if(n[-1] !== m[-1]){return count;}
//   if(n.length === 1 || m.length === 1){return count;}
//   else {
//     n = n.toString().slice(0,-1)
//     m = m.toString().slice(0,-1)
//     return count + digitMatch(n,m);
//   }
// }

module.exports = {
  factorial, 
  reverse,
  bunny,
  nested,
  search,
  isPalindrome,
  // digitMatch
  };
