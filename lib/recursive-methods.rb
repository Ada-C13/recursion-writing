# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ? O(n) 
# Space complexity: ? O(n)
def factorial(n)
  raise ArgumentError, "Number is less then 0" if n < 0
  return 1 if n == 0

  return n * factorial(n - 1)
end

# Time complexity: ? O(n) 
# Space complexity: ? O(n^2)
def reverse(s)
  return '' if s == nil || s == ''

  i = 0
  puts "#{s} #{s[i]}"
  return reverse(s[i + 1..-1]) + s[i]
end

# Time complexity: ? O(n)
# Space complexity: ? O(n)
def reverse_inplace(s, first = 0, last = s.length-1)
 if first < last
   s[first], s[last] = s[last], s[first]
   return reverse_inplace(s, first + 1, last -1)
 end
 return s
end

# Time complexity: ? O(n)
# Space complexity: ? O(n)
def bunny(n)
  return 0 if n == 0

  return 2 + bunny(n-1)
end

# Time complexity:? O(n)
# Space complexity:? O(n)
def nested(s, first = 0, last = s.length-1)
  return true if s[first] == ")" && s[last] == "(" 
  return true if s.empty?
  return false if s[first] != "(" || s[last] != ")" 
  
  return true && nested(s, first+1 , last-1)
end

# Time complexity: ? O(n)
# Space complexity: ? O(n)
def search(array, value, first = 0)
  return false if array.length == 0
  return true if array[first] == value 

  return search(array, value, first + 1) if array[first] != value && array.length != first
  return false
end

# Time complexity: ? O(n)
# Space complexity: ? O(n^2)
def is_palindrome(s) 
  return true if s.length < 2
  return false if s[0] != s[-1]

  return is_palindrome(s[1..-2])
end

# Time complexity: ? O(log 10 n)
# Space complexity: ? O(log 10 n)
def digit_match(n, m, match = 0)
  return count_match if n == 0 || m == 0

  n_last = n % 10
  m_last = m % 10

  return digit_match(n / 10, m /10, match + 1) if n_last == m_last
  return digit_match(n / 10, m /10, match)
end

