# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)?
# Space complexity: O(n)?
def factorial(n)
  return n if n == 1
  return 1 if n == 0
  raise ArgumentError if n < 0

  n = n * factorial(n-1)
end

# Time complexity: O(n) ?
# Space complexity: O(n) ?
def reverse(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[0...-1])
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
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