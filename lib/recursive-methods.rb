# Authoring recursive algorithms.
# Add comments including time and space complexity for each method.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 1 - Factorial(n)
# accepts an integer n and uses recursion to return the n factorial n!
# e.g. fact(4) = 4 * 3 * 2 * 1 = 24, n = size of input
# Linear Recursion - the algorithm is linear, running in O(n) time
# Time Complexity : O(n)
# Space complexity: O(n) maximum depth is proportional to n
# The function is called recursively n times assuming both
# decrementation and multiplication are constant operations.
# Therefore, The time complexity of recursive factorial is O(n).
# There is no extra space taken,the space complexity is O(N).

def factorial(n)
  raise ArgumentError if n < 0
  return n == 0 ? 1 : n * factorial(n-1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 2 - Reverse(str)
# accepts a string as parameter and returns the reverse of the string
# by reversing all letters and all words in the string
# e.g. reverse("hello world") will return "dlrow olleh"
# Linear Recursion
# Time complexity : O(n) n is the size of the string
# Space complexity: O(n) maximum depth is proportional to n

def reverse(str, left = 0, right = str.length-1)
  return str if left >= right # base case
  temp       = str[left]
  str[left]  = str[right] 
  str[right] = temp
  return reverse(str, left+1, right-1)  # recursive case
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Write # 3 - Reverse inplace(s)
# reverse_inplace(s) accepts a string as a parameter and
# reverses the string in place using a recursive algorithm
# e.g. reverse("hello world") converts to "dlrow olleh"
# Linear Recursion
# Time complexity : O(n) n is the size of the string
# Space complexity: O(n) maximum depth is proportional to n

def reverse_helper(s, first, last)
  if first < last
    s[first], s[last] = s[last], s[first]
    return reverse_helper(s, first + 1, last - 1)
  else
    return s
  end
end

def reverse_inplace(s)
  return reverse_helper(s, 0, s.length - 1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 4 - Constant - Bunny(n)
# A method that accepts an integer parameter n that represents
# a number of bunnies and each has two floppy ears. Compute
# the total of ears recursively w/o loops or multiplication.
# e.g. bunny(0)  = 0, bunny(1)  = 2, bunny(10) = 20
# Time Complexity : O(1) constant time of 2 number of ears
# Space Complexity: O(1) maximum depth is 2

def bunny(n, m = 2)
  return n if m == 1
  return n + bunny(n, m-1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Write # 5 Nested
# A method nested that accepts a string of only parenthesis
# and then returns if those parenthesis are properly nested.
# Only parenthesis characters will be passed to this method.
# e.g. nested("((()))") = true, nested("())") = false
# Do this without creating new strings in the process.
# Time complexity : O(n) n is the size of the string
# Space complexity: O(n) maximum depth is proportional to n

def nested(s, left = 0, right = s.length - 1)
  return false if s.length % 2 != 0
  return true  if left > right
  return false if s[left] != "(" || s[right] != ")"
  return nested(s, left + 1, right - 1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 6 - Search(array, value)
# accepts an unsorted array of integers and an integer to find
# returns true if the value if found and false otherwise
# Linear Recursion
# Time Complexity : O(n) n = size of the array
# Space Complexity: O(n) maximum depth is proportional to n

def search(arr, n, index = 0)
  return false if arr.size == 0
  return false if index == arr.length
  return true  if arr[index] == n 
  return search(arr, n, index + 1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Write # 7 - is_palindrome(s)
# accepts a string and returns a boolean if a palindrome or not.
# is_palindrome("racecar") = true, is_palindrome("smile") = false
# Do this without creating new strings while solving the problem.
# Time complexity : O(n) n is the size of the string
# Space complexity: O(n) maximum depth is proportional to n
# This recursive call is being done for at most n/2 times

def is_palindrome(str, left = 0, right = str.length - 1)
  return true  if left >= right
  return false if str[left] != str[right]
  return is_palindrome(str, left + 1, right - 1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 8 Digit_match(n, m) 
# Recursive method accepts two positive integers as parameters
# and returns the number of digits that match in both integers.
# Two digits match if they are equal and have the same position
# relative to the end, starting with the ones digit.
# 1 0 7 2 5 0 3 8 9 1
#     | | | | | | | |
#     6 2 5 3 0 8 4 1
# returns 4 because 4 pairs match, 2-2, 5-5, 8-8, and 1-1.
# Time complexity : O(n) n is the number of digits of the smallest number
# Space complexity: O(n) maximum depth is proportional to n

def digit_match(int1, int2, count = 0, digit = 0)
  return 1     if int1 == 0 && int2 == 0 && digit == 0
  return count if int1 == 0 || int2 == 0
  count += 1   if int1 % 10 == int2 % 10
  return digit_match(int1/10, int2/10, count, digit+1)
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 9 - Fibonacci number
# A recursive method accepts an integer index n as a parameter
# and returns the nth fibonacci number
# e.g. fib(4) = (0 1 1 2 3) should return 3
# Functions with two recursive calls are binary recursive functions
# Binary Recursions return two calls of themselves
# Time Complexity  : O(1.618ˆn) the tight upper bound of fibonacci
# Space Complexity : O(n) maximum depth is proportional to n
# [Phin – (phi)n] / Sqrt[5]
# Phi = (1 + Sqrt[5]) / 2 the so-called golden mean
# phi = (1 – Sqrt[5]) / 2 an associated golden number

def fibonacci(n)
    n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end

# p fibonacci(-1)
# p fibonacci(0)
# p fibonacci(10)  # 0, 1, 1, 2, 3, 5, 8, 13, 21, 55
# p fibonacci(100)
# p fibonacci(200) # must use memoization because it takes a long time!
