# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError.new("Number must be at least 0!") if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2), creates a new string on each recursive call... but does s[0] add space?
def reverse(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return n if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2), creates a new string on each recursive call
def nested(s)
  return true if s.length == 0
  return false if s[0] != "(" || s[-1] != ")"
  return nested(s[1...-1])
end

# Time complexity: O(n)
# Space complexity: O(n^2), creates a new string on each recursive call
def search(array, value)
  return false if array.empty?
  return true if array[0] == value
  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n^2), creates a new string on each recursive call
def is_palindrome(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]
  return is_palindrome(s[1...-1])
end

# Time complexity: O(log10(n))
# Space complexity: O(log10(n))
# Would both complexities O(log10(n*m)) since both n and m are being divided by 10 on each recursive call?
def digit_match(n, m)
  return 1 if n == 0 && m == 0
  return 0 if n <= 1 || m <= 1 
  return 1 + digit_match(n / 10, m / 10) if n % 10 == m % 10
  return 0 + digit_match(n / 10, m / 10) if n % 10 != m % 10
end