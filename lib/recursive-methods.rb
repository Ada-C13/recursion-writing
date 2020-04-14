# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - method will perform n number of multiplications
# Space complexity: O(n) - n function calls are placed on the system call stack
def factorial(n)
  if n < 0
    raise ArgumentError, "number must be greater than or equal to zero"
  end

  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n) - given n = s.length, method will run n times
# Space complexity: O(n) - n function calls are placed on the system call stack
def reverse(s)
  return s if s.length == 0

  return "#{s[-1]}#{reverse(s[0...s.length-1])}"
end

def reverse_helper(s, first, last)
  if first < last 
    s[first], s[last] = s[last], s[first]
    return reverse_helper(s, first+1, last-1)
  end 
  return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return reverse_helper(s, 0, s.length-1)
end

# Time complexity: O(n) - method will perform n number of additions
# Space complexity: O(n) - n function calls are placed on the system call stack
def bunny(n)
  return n if n == 0
  
  return 2 + bunny(n-1)
end

def nested_helper(s, i, j)
  if i > j
    return true
  elsif s[i] == '(' && s[j] == ')'
    return nested_helper(s, i+1, j-1)
  end

  return false
end

# Time complexity: O(n) - given n = s.length, method will run n/2 times
# Space complexity: O(n) - n/2 function calls are placed on the system call stack
def nested(s)
  return true if s.length == 0
  return false if s.length % 2 != 0

  return nested_helper(s, 0, s.length-1)
end

# Time complexity: O(n) - given n = array.length, method will run n times
# Space complexity: O(n) - n function calls are placed on the system call stack 
def search(array, value, index=0)
  return false if index >= array.length
  return true if array[index] == value

  return search(array, value, index+1)
end


def is_palindrome_helper(s, i, j)
  return true if i >= j
  return false if s[i] != s[j]
    
  return is_palindrome_helper(s, i+1, j-1)
end

# Time complexity: O(n) - given n = s.length, method will run n/2 times
# Space complexity: O(n) - n/2 function calls are placed on the system call stack
def is_palindrome(s)
  return false if s == nil

  return is_palindrome_helper(s, 0, s.length-1)
end

# Time complexity: 
# Space complexity: 
def digit_match(n, m)
  # TODO: Complete this method, could not figure it out
  raise NotImplementedError, "Method not implemented"
end