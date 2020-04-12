# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) => n is the number of numbers
# Space complexity: O(n) => b/c each recusive will add a stack frame on the call stack
def factorial(n)
  raise ArgumentError.new('It must be a positive number.') if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n) => n is the length of the string
# Space complexity: O(n^2)  =>  we end up creating a new array in every recursion
def reverse(s)
  # when the string length is less or equal to 1, it's no need to reverse
  if s.length <= 1
    return s 
  else
    return reverse(s[1..-1]) + s[0]
  end
end

# Time complexity: O(n) => n is the length of the string
# Space complexity: O(n)  => b/c each recusive will add a stack frame on the call stack
def reverse_inplace(s)
  return reverse_helper(s, 0, s.length - 1)
end

def reverse_helper(s, first_i, last_i)
  if first_i < last_i
    temp = s[first_i]
    s[first_i] = s[last_i]
    s[last_i] = temp
    return reverse_helper(s, first_i + 1, last_i - 1)
  end
  return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)  => b/c each recusive will add a stack frame on the call stack
def nested(s)
  return true if s.length == 0
  return false if s.length.odd?
  nested_helper(s, 0, s.length - 1)
end

def nested_helper(s, first_i, last_i)
  if first_i < last_i
    if s[first_i] != s[last_i]
      return nested_helper(s, first_i + 1, last_i - 1)
    else
      return false
    end
  end
  return true
end

# Time complexity:  O(n) => n is the length of the string
# Space complexity: O(n)  => b/c each recusive will add a stack frame on the call stack
def search(array, value)
  return search_helper(array, value)
end

def search_helper(array, value, index = 0)
  if index < array.length
    if array[index] != value
      return search_helper(array, value, index + 1)
    else
      return true
    end
  end
  return false
end

# Time complexity:  O(n) => n is the length of the string
# Space complexity: O(n)  => b/c each recusive will add a stack frame on the call stack
def is_palindrome(s)
  return true if s.length == 0
  return palindrome_helper(s, 0, s.length - 1)
end

def palindrome_helper(s, first_i, last_i)
  if first_i < last_i
    if s[first_i] == s[last_i]
      return palindrome_helper(s, first_i + 1, last_i - 1)
    else
      return false
    end
  end
  return true
end

# Time complexity: O(log 10 n)
# Space complexity: ? O(log 10 n)
def digit_match(n, m)
  digit_match_helper(n, m)
end

def digit_match_helper(n, m, counts = 0)
  if n < 10 || m < 10
    counts += 1 if n % 10 == m % 10
    return counts
  elsif n % 10 == m % 10
    return digit_match_helper(n / 10, m/  10, counts += 1)
  else
    return digit_match_helper(n / 10, m / 10, counts)
  end
  return counts
end