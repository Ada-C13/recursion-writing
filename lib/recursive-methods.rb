# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError, "N must be positive."
  elsif n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
  return s.reverse
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.empty?
  return  (s[1..-1]).reverse + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
  return true if s.empty?
  return false if s.length.odd?

  if (s[0] == "(" && s[-1] == ")") && nested(s[1..-2])
    return true
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, i = 0)
    return false if array.empty?
    return false if i >= array.length
    return true if array[i] == value

    return search(array, value, i += 1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
  if s.length < 2
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  # not enough time to get to this one, will attempt later on own time
    raise NotImplementedError, "Method not implemented"
end