# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError.new("#{n} can not be a negative number.") if n < 0
  return 1 if n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length < 2
  return s[-1] << reverse(s[0..s.length - 2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def helper_reverse_inplace(s, i = 0, end_i = s.length - 1)
  return s if i >= end_i

  temp = s[i]
  s[i] = s[end_i] 
  s[end_i] = temp
  return helper_reverse_inplace(s, i + 1, end_i - 1)
end

def reverse_inplace(s)
  helper_reverse_inplace(s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested_helper(s, i = 0, end_i = s.length - 1)
  return false if s[i] == s[end_i]
  return true if i >= end_i
  nested_helper(s, i + 1, end_i - 1)
end

def nested(s)
  return true if s == ""
  return false if s.length % 2 == 1
  nested_helper(s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search_helper(array, value, index = 0)
  return true if array[index] == value
  return false if index > array.length - 1
  search_helper(array, value, index + 1)
end

def search(array, value)
  return false if array == []
  search_helper(array, value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome_helper(s, i = 0, end_i = s.length - 1)
  return false if s[i] != s[end_i]
  return true if i >= end_i
  is_palindrome_helper(s, i + 1, end_i - 1)
end

def is_palindrome(s)
  return true if s.length < 2
  is_palindrome_helper(s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match_helper(num1s, num2s, n = num1s.length - 1, n2 = num2s.length - 1, counter = 0)
  return counter if (n < 0 || n2 < 0)
  counter += 1 if num1s[n] == num2s[n2]
  digit_match_helper(num1s, num2s, n - 1, n2 - 1, counter)
end

def digit_match(num1, num2)
  num1s = num1.to_s
  num2s = num2.to_s
  digit_match_helper(num1s, num2s)
end