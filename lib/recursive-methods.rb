# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) with n being how high the value of the integer is
# Space complexity: O(n), because of the recursive stack; size of stack depends on value of parameter
def factorial(n)
  if n < 0 
    raise ArgumentError.new('Provide a number greater than 0.')
  end
  return 1 if n == 0

  return (n * factorial(n - 1))
end

# Time complexity: O(n), with n being the length of the string parameter
# Space complexity: O(n^2), because of the recursive stack; size of the stack depends on the length of the string.
# There is an additional array structure also created to aid in reversal of the string.
def reverse(s)
  return s if s.length <= 1

  reverse_array = []
  return help_rev(s, reverse_array, s.length)
end

def help_rev(s, arr, length)
  if length >= 0
    arr << s[length]
    length -= 1

    return help_rev(s, arr, length)
  end 
  
  return arr.join('')
end

# Time complexity: O(n), with n being the length of the string parameter
# Space complexity: O(n), because of the recursive stack; size of the stack depends on the length of the string.
def reverse_inplace(s)
  return reverse_helper(s, 0 , s.length - 1)  
end

def reverse_helper(s, first, last)
  if first < last
    temp = s[first]
    s[first] = s[last]
    s[last] = temp

    return reverse_helper(s, first + 1, last - 1)
  end

  return s
end

# Time complexity: O(n) with n being how high the value of the integer is
# Space complexity: O(n), because of the recursive stack; size of stack depends on value of parameter
def bunny(n)
  return 0 if n == 0

  return (2 + (2 * (n - 1)))
end

# Time complexity: O(n), with n being the length of the string parameter
# Space complexity: O(n), because of the recursive stack; size of the stack depends on the length of the string.
def nested(s)
  return true if s.length == 0
  return false if s.length % 2 != 0

  return nested_helper(s)
end

def nested_helper(s, i = 0, j = (s.length - 1))
  if i < j
    if (s[i] != '(' || s[j] != ')')
      return false
    end

    return nested_helper(s, i + 1, j - 1)
  end

  return true
end

# Time complexity: O(n), with n being the size of the array.
# Space complexity: O(n^2), because of the recursive stack involving an array.
def search(array, value)
  return false if array.length == 0

  return search_helper(array, value)
end

def search_helper(a, v, i = 0)
  if i < a.length
    if a[i] == v
      return true
    end

    return search_helper(a, v, i + 1)
  end

  return false
end

# Time complexity: O(n), with n being the length of the string parameter
# Space complexity: O(n), because of the recursive stack; size of the stack depends on the length of the string.
def is_palindrome(s)
  return true if s.length <= 1

  return pal_helper(s)
end

def pal_helper(s, i = 0, j = (s.length - 1))
  if i < j
    return false if (s[i] != s[j])
    return pal_helper(s, i + 1, j - 1)
  end

  return true
end

# Time complexity: O(n), with n being the length in digits of the shortest number.
# Space complexity: O(n), because of the recursive stack; size of the stack depends number of digit in the shortest num.
def digit_match(n, m)
  return 0 if (n % 10 != m % 10)
  
  matches = 0

  return match_helper(n, m, matches)
end

def match_helper(n, m, matches)
  matches += 1 if (n % 10 == m % 10)

  if (n < 10 || m < 10)
    return matches
  else
    return match_helper(n / 10, m / 10, matches)
  end
end