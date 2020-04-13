# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n^2)

def reverse_helper(string, start = 0, last = s.length - 1)
  return string if string.length <= 1
  return string if start == last
  if start < last
    string[start],string[last] = string[last], string[start]
  end
  return reverse_helper(string, start + 1, last - 1)
end


def reverse_inplace(s)
    # raise NotImplementedError, "Method not implemented"
    return reverse_helper(s, 0, s.length - 1)
end


# Time complexity: O(n)
# Space complexity: O(n)

#   returns 2 for 1 bunny
def bunny(n)
  # raise NotImplementedError, "Method not implemented"
  return 0 if n == 0
  return 2 + bunny(n - 1)

end

# case 2
# bunny(1) --> 2 + 0 --> 2
# case 4
# bunny(1) = 2 + bunny(0) --> 2 + 0 + 2
# bunny(2) = 2 + bunny(1) --> 2 + 2 + 4 
# bunny(3) = 2 + bunny(2) --> 2 + 4 = 6
# bunny(4) = 2 + bunny(3) --> 2 + 6 = 8

# Time complexity: o(n)
# Space complexity: o(n)

def nested_helper(s, start = 0, last = s.length - 1)

  while start < last
    if s[start] != '(' || s[last] != ')'
      return false
    end
    return nested_helper(s, start + 1, last - 1)
  end

  return true
end

def nested(s)
  return true if s.empty?
  return false if s.length.odd?
  return nested_helper(s)
end

# Time complexity: o(n)
# Space complexity: o(n)
def search_helper(array, value, index = 0)
  while index < array.length
    if array[index] == value
      return true
    end
    return search_helper(array, value , index + 1)
  end
  return false
end

def search(array, value)
  return false if array.empty?
  return search_helper(array, value)
end


# Time complexity: o(n)
# Space complexity: o(n)

def is_palindrome_helper(string, first = 0, last = string.length - 1)
  while first < last
    if string[first] != string[last]
      return false
    end
    return is_palindrome_helper(string, first + 1, last - 1)
  end
  return true
end

def is_palindrome(s)
  return true if s.empty?
  return is_palindrome_helper(s)
end

# Time complexity: o(n)
# Space complexity: o(n)
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end

