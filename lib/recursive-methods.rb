# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
    return 1 if n == 0
    return n if n == 1
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length == 1
  return '' if s.empty?

  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)

#inspired by interview cake reverse string solution
def reverse_inplace(s, left = 0, right = s.length - 1)
  return '' if s.empty?
  return s if s.length == 1
  if left < right
    s[left], s[right] =
    s[right], s[left]
    reverse_inplace(s, left + 1, right - 1)
  end
  return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    first = 0
    last = s.length-1
    return true if s.empty?
    return false if s.length == 1
    if s[first] != '(' || s[last] != ')'
      return false
    end
    return nested(s[first+1, last-1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    return false if array.empty?
    return true if value == array[0]
    return search(array[1..-1], value)
end

# Time complexity: O(n), depends on string length
# Space complexity: O(n)

#using some of the implementation from reverse in place
def is_palindrome(s, left = 0, right = s.length - 1)
    return true if s.empty? || s.length == 1
    return true if left >= right
    return false if s[left] != s[right]
    return is_palindrome(s, left + 1, right - 1)
end

# Time complexity: O(log n)
# Space complexity: O(log n)
def digit_match(n, m)
  count = 0
    return 1 if n == 0 && m == 0
    return count if n == 0 || m == 0

  if n % 10 == m % 10
    count += 1
  end
  return count if n < 10 || m < 10
  return count + digit_match(n/10, m/10)
end