# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0

  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s, first = 0, last = s.length - 1)
  return s if first > last

  temp = s[first]
  s[first] = s[last]
  s[last] = temp

  return reverse(s, first + 1, last - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_helper(s, first, last)
  if first < last
    temp = s[first]
    s[first] = s[last]
    s[last] = temp
    return reverse_helper(s, first + 1, last - 1)
  end

  return s
end

def reverse_inplace(s)
  return reverse_helper(s, 0, s.length - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1

  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, first = 0, last = s.length - 1)
  return true if s == ""
  return false if first > last
  return true if first == last - 1 && s[first] == "(" && s[last] == ")"

  return nested(s, first + 1, last - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
  return false if array.length == 0
  return false if index >= array.length
  return true if array[index] == value

  return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, first = 0, last = s.length - 1)
  return true if s.length == 0
  return false if first > last
  return false if s[first] != s[last]
  return true if (first == last || first == last - 1) && s[first] == s[last]

  return is_palindrome(s, first + 1, last - 1)
end

# Time complexity: O(log 10 n)
# Space complexity: O(log 10 n)
def digit_match(n, m, count_match = 0)
  return 1 if n == 0 && m == 0
  return count_match if n == 0 || m == 0

  n_last_digit = n % 10
  m_last_digit = m % 10

  if n_last_digit == m_last_digit
    return digit_match(n / 10, m / 10, count_match + 1)
  else
    return digit_match(n / 10, m / 10, count_match)
  end
end

# time complexity: O(2^n)
# space complexity: O(n)
def fibonacci(n)
  return 0 if n == 0
  return n if n == 1

  return fibonacci(n - 1) + fibonacci(n - 2)
end
