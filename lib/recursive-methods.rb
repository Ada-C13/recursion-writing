# Authoring recursive algorithms. Add comments including time and space complexity for each method.
require "pry"
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(num)
  raise ArgumentError if num < 0
  if num == 1 || num == 0 # base case
    return 1
  else
    return num * factorial(num - 1)
  end
end

# O(n) for both T & S it's decrementing by 1, the function calls are the same for both

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  if s.length == 0 || s.length == 1 # base case
    return s
  end
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return reverse_helper(s, 0, s.length - 1)
end

def reverse_helper(s, l, r)
  if l >= r
    return s
  else
    s[l], s[r] = s[r], s[l]
    return reverse_helper(s, l + 1, r - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  raise ArgumentError if n < 0
  if n == 0 # base case
    return 0
  else
    return bunny(n - 1) + 2
  end
end

# Time complexity: O(n)
# Space complexity: 0(n) look it up
def nested(s)
  # if empty string, return true
  # if length == 1, return false
  # if left char == right char return false,  if "(()("
  # if left char != right char, return nested(s[1..-2])
  if s == "" # base case
    return true
  elsif s.length == 1 # base case
    return false
  elsif s[0] == s[-1] # base case
    return false
  else
    return nested(s[1..-2])
  end
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  if array == [] # base case
    return false
  elsif array[0] == value # base case
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  # if empty string, return true
  # if length == 1, return true
  # if left char != right char, return false
  # if left char == right char return call fun
  if s.length == 0 || s.length == 1
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(log n)
# Space complexity: 0(log n)
def digit_match(n, m)
  # 1232440340 0  # 1 match
  # 1232440341 0  # no match
  # 12324403 3 # 3 match
  # if n/10 or m/10 == 0
  # if n%10 == m%10 return 1
  # else return 0
  # compare values in ones place n%10 , m % 10
  # if they're the same, return digit_match(n/10, m/10) + 1
  # else return digit_match(n/10, m/10)

  if n / 10 == 0 || m / 10 == 0 # base case when n or m is only 1 digit
    if n % 10 == m % 10 # if last digit match
      return 1
    else # if last digit doesn't match
      return 0
    end
  else
    if n % 10 == m % 10
      return digit_match(n / 10, m / 10) + 1
    else
      return digit_match(n / 10, m / 10)
    end
  end
end
