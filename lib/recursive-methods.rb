# https://github.com/Hannah0124/recursion-writing

# Authoring recursive algorithms. Add comments including time and space complexity for each method.



# Time complexity: O(n) => Because it recurses based on "n" input
# Space complexity: O(n) => Because there is a hidden data structure, the System Stack
def factorial(n)
  raise ArgumentError, "A number must be greater than or equal to 0" if n < 0
  return 1 if n == 0

  return n * factorial(n - 1)
end



# Reference about reverse (not in place): https://stackoverflow.com/questions/20406003/reverse-a-string-with-ruby-with-recursion-whats-wrong-with-this

# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n^2) => because s[0..-2] creates a new string for each recursion
def reverse(s)
  return s if s.length < 2

  return reverse(s[1..-1]) + s[0]    # Solution (1)
  # return s[-1] + reverse(s[0..-2]) # Solution (2)
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
def bunny(n) 
  return 0 if n == 0
  return 2 + bunny(n - 1)
end




# Solution (1)
# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n) => because of the System Stack
def nested(s, low = 0, high = s.length - 1)
  if s.empty? || low >= high
    return true 
  elsif s.length.odd?
    return false 
  end 

  return (s[low] == "(" && s[high] == ")") && nested(s, low + 1, high - 1)
end


# # Solution (2)
# # Time complexity: O(n) => where n is the length of s
# # Space complexity: O(n^2) => because it creates a new string for each recursion
# def nested(s)
#   return true if s.empty?
#   return false if s.length.odd?

#   return (s[0] == "(" && s[-1] == ")") && nested(s[1..-2])
# end


# Time complexity: O(n) => where n is the length of array
# Space complexity: O(n) => because of the System Stack
def search(array, value, i = 0)
  return false if array.empty? || i >= array.length
  return true if array[i] == value

  return search(array, value, i + 1)
end


# Solution (1)
# Time complexity: O(n) => where n is the length of s
# Space complexity: O(n) => Because of the System Stack
def is_palindrome(s, low = 0, high = s.length - 1)
  if s.length < 2 || low >= high 
    return true
  elsif s[low] != s[high]
    return false 
  else  
    return is_palindrome(s, low + 1, high - 1)
  end 

  return true
end


# # Solution (2)
# # Time complexity: O(n) => where n is the length of s
# # Space complexity: O(n^2) => because it creates a new string (s[1..-2]) for each recursion
# def is_palindrome(s)
#   return true if s.length < 2
#   return false if s[0] != s[-1]

#   return is_palindrome(s[1..-2])
# end



# Time complexity: O(n) => (if I consider that n < m)
# Space complexity: O(n) => because of the System Stack
def digit_match(n, m, sum = 0)
  return n.to_s.length if n == m
  return 1 if n == 0 && m == 0

  return digit_match_helper(n, m, sum)
end


# helper method
def digit_match_helper(n, m, sum) 
  if n % 10 == m % 10
    sum += 1 
  end 

  if n < 10 || m < 10    
    return sum  
  end
    
  return digit_match(n / 10, m / 10, sum)
end 



# Reference about time complexity: https://stackoverflow.com/questions/7547133/why-is-the-complexity-of-computing-the-fibonacci-series-2n-and-not-n2

# Time complexity: O(2^n) => because each step I call recursion twice
# Space complexity: O(n) => because of the System Stack
def fib(num)
  return num if num < 2
  return fib(num - 1) + fib(num - 2)
end
