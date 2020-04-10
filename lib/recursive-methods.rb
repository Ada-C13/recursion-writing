# https://github.com/Hannah0124/recursion-writing 

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) => Because it recurses based on "n" input
# Space complexity: O(n) => Because there is a hidden data structure, the System Stack
def factorial(n)
  raise ArgumentError, "A number must be greater than or equal to 0" if n < 0
  return 1 if n == 0

  return n * factorial(n - 1)
end



# Reference about reverse: https://stackoverflow.com/questions/20406003/reverse-a-string-with-ruby-with-recursion-whats-wrong-with-this

# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n^2) => because s[0..-2] creates a new string per each recursion
def reverse(s)
  return s if s.length < 2

  last = s[-1] 

  return last + reverse(s[0..-2])
end



# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n) => because of the System Stack
def reverse_inplace(s, i = 0, j = s.length - 1)
  return s if i >= j

  s[i], s[j] = s[j], s[i]

  return reverse_inplace(s, i + 1, j - 1)  
end


# Time complexity: O(n) => n depends on the input size
# Space complexity: O(n) => because of the System Stack
def bunny(n) # 10
    return 0 if n == 0
    return 2 + bunny(n - 1)
end


# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n^2) => because it creates a new string per every recursion
def nested(s)
  return true if s.length == 0
  return false if s.length % 2 != 0

  return ( s[0] == "(" && s[-1] == ")" ) && nested(s[1..-2])
end



# Time complexity: O(n) => where n is the length of array
# Space complexity: O(n) => because of the System Stack
def search(array, value, i = 0)
  return false if i >= array.length  
  return true if array[i] == value

  return search(array, value, i + 1)
end



# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n^2) => Because it creates a new string (s[1..-2]) per every recursion
def is_palindrome(s)
  return true if s.empty? 
  
  return false if s[0] != s[-1] 

  return is_palindrome(s[1..-2])
end



# Time complexity: O(n) => (if I consider that if n < m)
# Space complexity: O(n) => because of the System Stack
def digit_match(n, m, sum = 0) 
  return 1 if n == 0 && m == 0
  return sum if n == 0 || m == 0
  
  if n % 10 == m % 10  # if the last digit matches
    return digit_match(n / 10, m / 10, sum + 1)
  else 
    return digit_match(n / 10, m / 10, sum)
  end 
end


# Reference about time complexity: https://medium.com/@syedtousifahmed/fibonacci-iterative-vs-recursive-5182d7783055

# Time complexity: O(2^n) => Becuase it calculates the Fibonacci of a number multiple times.
# Space complexity: O(n) => because of the System Stack
def fib(num) 
  return num if num < 2
  return fib(num - 1) + fib(num - 2)  
end 


