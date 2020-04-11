const recursion = require('./recursion');
const factorial = recursion.factorial;
const reverse = recursion.reverse;
const bunny = recursion.bunny;
const nested = recursion.nested;
const search = recursion.search;
const palindrome = recursion.isPalindrome;
const digitMatch = recursion.digitMatch;

test('FACTORIAL: returns 1 when 0 is given', () => {
  expect(factorial(0)).toBe(1);
});

test('FACTORIAL: returns the correct factorial of 5', () => {
  expect(factorial(5)).toBe(5*4*3*2*1);
});

test('REVERSE: cat returns tac', () => {
  expect(reverse("cat")).toBe("tac");
});

test('REVERSE: will reverse "a"', () => {
  expect(reverse("a")).toBe("a");
});

test('REVERSE: will reverse ""', () => {
  expect(reverse("")).toBe("");
});

test('REVERSE: will reverse "apple"', () => {
  expect(reverse("apple")).toBe("elppa");
});

test('BUNNY: will return 0 for 0 bunnies', () => {
  expect(bunny(0)).toBe(0);
});

test('BUNNY: will return 2 for 1 bunny', () => {
  expect(bunny(1)).toBe(2);
});

test('BUNNY: will return 100 for 50 bunnies', () => {
  expect(bunny(50)).toBe(100);
});

test('NESTED: will return true for an empty string', () => {
  expect(nested("")).toBe(true);
});

test('NESTED: will return true for a nested series of parens', () => {
  expect(nested("((()))")).toBe(true);
});

test('NESTED: will return false for a nested series of parens', () => {
  expect(nested("(()))")).toBe(false);
});

test('NESTED: will return false for an even length improperly nested series of parens', () => {
  expect(nested("(())))")).toBe(false);
});

test('SEARCH: will return false for empty array', () => {
  expect(search([],"a")).toBe(false);
});

test('SEARCH: will return true when looking for something in the array', () => {
  expect(search(["b", "c", "a"],"a")).toBe(true);
});

test('SEARCH: will return false when looking for something not in the array', () => {
  expect(search(["b", "c", "a"],"x")).toBe(false);
});

test('SEARCH: will return true when finding something at the front of the array', () => {
  expect(search(["b", "c", "a"],"b")).toBe(true);
});

test('PALINDROME: will return true for emptystring', () => {
  expect(palindrome("")).toBe(true);
});

test('PALINDROME: will return true for a palindrome', () => {
  expect(palindrome("racecar")).toBe(true);
});

test('PALINDROME: will return false for a non-palindrome', () => {
  expect(palindrome("raecar")).toBe(false);
});

// test('DIGITMATCH: returns 4 for 1072503891 and 62530841', () => {
//   expect(digitMatch(1072503891,62530841)).toBe(4);
// });

// test('DIGITMATCH: returns 0 for 0 and 62530841', () => {
//   expect(digitMatch(0,62530841)).toBe(0);
// });

// test('DIGITMATCH: returns 3 for 841 and 62530841', () => {
//   expect(digitMatch(841,62530841)).toBe(3);
// });

// test('DIGITMATCH: returns 1 for 0 and 0', () => {
//   expect(digitMatch(0,0)).toBe(1);
// });

// test('DIGITMATCH: returns 1 for 10 and 20', () => {
//   expect(digitMatch(10,20)).toBe(1);
// });
