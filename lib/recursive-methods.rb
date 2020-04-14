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
  while first < last
    temp = s[first]
    s[first] = s[last]
    s[last] = temp
    return reverse_helper(s, first + 1, last - 1)
  end

  return s
end

def reverse_inplace(s)
  return s if s.length <= 1
  reverse_helper(s, 0, s.length - 1)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  return n if n == 0
  return 2 + bunny(n-1)
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