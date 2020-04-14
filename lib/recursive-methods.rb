# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  raise ArgumentError.new("Number must be at least 0!") if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def reverse_helper(s, first, last)
  # while first index < last index, swap letters at each position
  # return reverse_helper, pass in s, first+1, last-1
  # return s after recursion is finished 
end

def reverse_inplace(s)
  # base case: return s if s.length <= 1
  # call helper method, pass in s, first index = 0 last index = s.length -1
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end