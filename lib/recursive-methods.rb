# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) with n being how high the value of the integer is
# Space complexity: O(n), because of the recursive stack.
def factorial(n)
  if n < 0 
    raise ArgumentError.new('Provide a number greater than 0.')
  end
  return 1 if n == 0

  return (n * factorial(n - 1))
end

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0

  return (2 + (2 * (n - 1)))
end

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n * m)
def digit_match(n, m)
  n = n.to_s.split('').map(&:to_i)
  m = m.to_s.split('').map(&:to_i)

  shortest_length_digits = [n, m].max_by {|digits| digits.length}

  return match_helper(n, n_index = (n.length - 1), m, m_index = (m.length - 1), shortest_length_digits.length, matches = 0)
end

def match_helper(n, n_index, m, m_index, length, matches)
  if length > 0
    if n[n_index] == m[m_index]
      matches += 1
    end
    length -= 1

    return match_helper(n, (n_index - 1), m, (m_index - 1), length, matches)
  end

  return matches
end