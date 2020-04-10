# Authoring recursive algorithms.
# Add comments including time and space complexity for each method.
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 1 - Factorial(n)
# accepts an integer n and uses recursion to return the n factorial n!
# e.g. fact(4) = 4 * 3 * 2 * 1 = 24, n = size of input
# Linear Recursion - the algorithm is linear, running in O(n) time
# Time Complexity : O(n)
# Space Complexity: O(n)
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
# Time Complexity : O(??) 
# Space Complexity: O(n)

def reverse(str, left = 0, right = str.length-1)
  return str if left >= right # base case
  temp       = str[left]
  str[left]  = str[right] 
  str[right] = temp
  return reverse(str, left+1, right-1)  # recursive case
end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Write # 3 - Reverse inplace(s)
# reverse_inplace(s) accepts a string as a parameter and
# reverses the string in place using a recursive algorithm
# e.g. reverse("hello world") converts to "dlrow olleh"
# Linear Recursion
# Time Complexity : O(logn) n/2, removes one from each side -2 
# Space Complexity: O(n)

def reverse_helper(s, first, last)
  if first < last
    s[first], s[last] = s[last], s[first]
    # temp     = s[first]
    # s[first] = s[last]
    # s[last]  = temp
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
# a number of bunnies and each has two big floppy ears. Compute
# the total of ears recursively w/o loops or multiplication.
# e.g. bunny(0)  = 0, bunny(1)  = 2, bunny(10) = 20
# Tail Recursion
# Time Complexity : O(1), constant time of 2 
# Space Complexity: O(n)

def bunny(n, m = 2)
    return n if m == 1
    return n + bunny(n, m-1)
  end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Write # 5 Nested
# A method nested that accepts a string of only parenthesis
# and then returns if those parenthesis are properly nested.
# No non-parenthesis characters will be passed to this method.
# e.g. nested("((()))") = true, nested("())") = false
# Do this without creating new strings in the process.
# Tail Recursion
# Time Complexity : O(logn) n/2, removes one from each side -2 
# Space Complexity: O(n)

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
# Time Complexity  O(n)
# Space Complexity O(n)

def search(arr, n, index = 0)
    return false if arr.size == 0
    return false if index == arr.length
    return true  if arr[index] == n 
    return search(arr, n, index + 1)
  end


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Write # 7 - is_palindrome(s)
# accepts a string as a parameter and returns a boolean if a palindrome or not.
# is_palindrome("racecar") = true, is_palindrome("smile") = false
# Try doing this without creating new strings while solving the problem.
# Time complexity : 
# Space complexity: 

def is_palindrome(str, left = 0, right = str.length - 1)
    return true  if left >= right
    return false if str[left] != str[right]
    return is_palindrome(str, left + 1, right - 1)
  end
 
  

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end