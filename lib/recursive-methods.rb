# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise(ArgumentError, "must be a positive integer") if n < 0
  return 1 if n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
  i = 0
  if s == nil || s.length == 0
    return ""
  else
    return reverse(s[(i + 1)..-1]) + s[i]
  end
end

# Time complexity: O(n)
# Space complexity: O(n)

def reverse_helper(s, first = 0, last = s.length - 1)
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
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)

def count_param(str, index, open_param_count)
  if index == str.length
    return open_param_count == 0
  elsif open_param_count < 0
    return false
  elsif str[index] == "("
    count_param(str, index + 1, open_param_count + 1)
  elsif str[index] == ")"
    count_param(str, index + 1, open_param_count - 1)
  end
end

def nested(s)
  count_param(s, 0, 0)
end

# Time complexity: O(n)
# Space complexity: 0(n^2)
def search(array, value)
  if array[0] == value
    return true
  end
  if array.length > 1
    search(array[1..-1], value)
  else
    return false
  end
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

# Time complexity: O(n) - n is the number of digits in the smallest number
# Space complexity: O(n)
def match_count(n, m, count)
  if n == 0 || m == 0
    return count
  elsif (n % 10) == (m % 10)
    count += 1
    match_count((n / 10), (m / 10), count)
  else
    match_count((n / 10), (m / 10), count)
  end
end

def digit_match(n, m)
  if n == 0 && m == 0
    return 1
  else
    match_count(n, m, 0)
  end
end
