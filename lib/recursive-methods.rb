# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  # raise NotImplementedError, "Method not implemented"
  return 1 if n == 0
  raise ArgumentError if n < 0
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    # raise NotImplementedError, "Method not implemented"
  return s if s.length <= 1
  return s[s.length - 1] + reverse(s[0, s.length - 1])

end

puts reverse("tac")
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

