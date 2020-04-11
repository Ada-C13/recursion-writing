# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity:  O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, 'argument n cannot be a negative number' if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end


# Time complexity:  O(n) where n is the length of the string
# Space complexity: O(n^2) where n is the length of the string
def reverse(s)
  return "" if s == nil || s.length == 0
  return reverse(s[1..-1]) + s[0]  #s[1..-1] is creating a new substring using a new memory address(diff object id)
end

# Practice using wrapper method
# Time complexity:  O(n) where n is (half) the length of the string
# Space complexity: O(n) where n is (half) the length of the string
def reverse_inplace(s)
  return reverse_helper(s)
end

def reverse_helper(string, low = 0, high = string.length - 1)
  if low < high
    string[low], string[high] = string[high], string[low]
    return reverse_helper(string, low + 1, high - 1)
  end

  return string
end


# Time complexity:  O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n-1)
end


# Time complexity:  O(n) where n equals (half) length of the string
# Space complexity: O(n) where n equals (half) length of the string
def nested(s, low = 0, high = s.length - 1)
  return false if s.length % 2 != 0
  
  if low >= high  #base case
      return true
  elsif s[low] != '(' || s[high] != ')'
      return false
  else
      return nested(s, low + 1, high - 1)
  end
end

# Alternative solution that creates new substrings for each recursion
# Time complexity:  O(n) where n equals (half) length of the string
# Space complexity: O(n^2) where n equals (half) length of the string
# def nested(s)
#   return false if s.length % 2 != 0
  
#   if s.length == 0
#       return true
#   elsif s[0] != '(' || s[-1] != ')'
#       return false
#   else
#       return nested(s[1..-2])
#   end
# end


# Time complexity:  O(n) where n is the size of the array
# Space complexity: O(n^2) where n is the size of the array
def search(array, value)
  if array.empty?
      return false
  elsif array[0] == value
      return true
  end
  
  return search(array[1..-1], value)
end


# Time complexity:  O(n) where n is (half) length of the string
# Space complexity: O(n) where n is (half) length of the string
def is_palindrome(s, low = 0, high = s.length - 1)
  if low >= high
    return true
  elsif s[low] != s[high]
    return false
  else
    return is_palindrome(s, low + 1, high - 1)
  end
end

# Alternative solution that creates new substrings for each recursion
# Time complexity:  O(n) where n is (half) length of the string
# Space complexity: O(n^2) where n is (half) length of the string
# def is_palindrome(s)
#   if s.length == 0
#     return true
#   elsif s[0] != s[-1]
#     return false
#   else
#     return is_palindrome(s[1..-2])
#   end
# end


# Practice using Tail Recursion
# Time complexity:  O(log10(n)) where n is the smaller number
# Space complexity: O(log10(n)) where n is the smaller number
def digit_match(n, m, matches = 0)
  
  if n % 10 == m % 10
    matches += 1
  end

  return matches if n < 10 || m < 10  #base-case
  return digit_match(n/10, m/10, matches)   
end


# Time complexity:  O(2^n)  #each recursion generates 2 recursions 
# Space complexity: O(n)    #the max depth of this recursion tree is proportional to n
def fibonacci(n)
  raise ArgumentError, ('argument n cannot be a negative number') if n < 0
  return n if n == 1 || n == 0  #base case
  return  fibonacci(n - 1) + fibonacci(n - 2)
end
