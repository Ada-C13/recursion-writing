# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Factorial

# Time complexity: O(n)
# Space complexity: O(n)

# factorial(n) Write a method factorial that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).

# e.g. fact(4) = 4 * 3 * 2 * 1 = 24

def factorial(n)
  if n < 0
    raise ArgumentError, "Please use a positive number"
  elsif n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Reverse

# Write a method `reverse` that accepts a string as a parameter and then returns the reverse of the string by reversing all letters and all words in the string.
# - e.g. reverse("hello world") will return "dlrow olleh"

# Time complexity: O(n)
# Space complexity: 0(n^2)
def reverse(s)
  return s if s.length <= 1

  reversed_s = reverse(s[1..-1])
  reversed_s += s[0]
  return reversed_s
end

# Reverse in place

# Write a method `reverse_inplace` that accepts a string as a parameter and then reverses the string in place using a recursive algorithm.
# - e.g. reverse("hello world") will convert the input string to "dlrow olleh"

# From example in class

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return reverse_help(s, 0, s.length - 1)
end

def reverse_help(s, first = 0, last = s.length - 1)
  if first < last
    s[first], s[last] = s[last], s[first]
    return reverse_help(s, first + 1, last - 1)
  end

  return s
end

# Bunny ears

# Write a method `bunny` that accepts an integer parameter n. N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
# - e.g. bunny(0) = 0
# - e.g. bunny(1) = 2
# - e.g. bunny(10) = 20

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1)
end

# Nested

# Write a method `nested` that accepts a string of only parenthesis and then returns if those parenthesis are properly nested. You may
# assume that no non-parenthesis characters will be passed to this method.
# - e.g. nested("((()))") = true
# - e.g. nested("())") = false
# **Challenge**: Try doing this without creating new strings in the process of solving the problem.

# Time complexity: O(n)
# Space complexity: o(n^2)
def nested(s)
  if s.length.odd?
    return false
  elsif s == ""
    return true
  end

  return nested_help(s, 0, s.length - 1)
end

def nested_help(s, first, last)
  if first >= last
    return true
  elsif s[first] == "(" && s[last] == ")"
    return nested_help(s, first + 1, last - 1)
  else
    return false
  end

  return s
end

# Search

# Write a method `search` that accepts an unsorted array of integers and an integer value to find and then returns true if the value is found in the unsorted array and returns false otherwise. Make the algorithm recursive.
# - e.g. search([34, 45, 21, 4, 67], 4) should return true
# - e.g. search([24, 51, 11], 4) should return false
# - e.g. search([], 4) should return false

# Time complexity: 0(n)
# Space complexity: O(n^2)
def search(array, value, index = 0)
  return false if index >= array.length

  return true if array[index] == value

  return search(array, value, index + 1)
end

# Palindrome

# Write a recursive method `pal` that accepts a string s as a parameter and returns a boolean value indicating if that string is a [palindrome](https://en.wikipedia.org/wiki/Palindrome) or not.
# - e.g. is_palindrome("racecar") = true
# - e.g. is_palindrome("smile") = false
# **Challenge**: Try doing this without creating new strings in the process of solving the problem.

# Time complexity: 0(n)
# Space complexity: O(n^2)
def is_palindrome(s)
  if s == ""
    return true
  end

  return pal_help(s, 0, s.length - 1)
end

def pal_help(s, first, last)
  if first >= last
    return true
  elsif s[first] != s[last]
    return false
  end

  return pal_help(s, first + 1, last - 1)
end

# Digit match

# Design and implement a recursive method that accepts two non-negative integers as parameters and that returns the number of digits that match in the two integers. Two digits match if they are equal and have the same position relative to the end of the number (i.e. starting with the ones digit). In other words, the method should compare the last digits of each number, the second-to-last digits of each number, the third-to-last digits of each number, and so forth, counting how many pairs match.
# For example, for  input values of (1072503891, 62530841), the method would compare as follows:
# ```
# 1 0 7 2 5 0 3 8 9 1
#   | | | | | | | |
#   6 2 5 3 0 8 4 1
# ```
# The method should return 4 in this case because 4 of these pairs match (2-2, 5-5, 8-8, and 1-1).

# Time complexity: 0(n)
# Space complexity: O(n^2)
def digit_match(n, m)
  #   x = n.to_s
  #   y = m.to_s
  n = n.to_s
  m = m.to_s

  count = 0

  if n.length == 0 || m.length == 0
    return count
  elsif n[-1] == m[-1]
    count += 1
  end

  return count + digit_match(n[0..-2], m[0..-2])
end
