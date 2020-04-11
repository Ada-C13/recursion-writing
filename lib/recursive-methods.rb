# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - n being the number given
# Space complexity: O(n) - n being number given
def factorial(n)
  if n < 0
    raise ArgumentError.new('n cannot be less than 0')
  elsif n <= 1
    return 1
  else
    return n * factorial(n-1)
  end
end


# Time complexity: O(n) - n is length of string
# Space complexity: O(n^2) - creating new string every call
def reverse(string)
  if string.length <= 1
    return string
  else 
    return string[-1] + reverse(string[0..-2])
  end
end


# Time complexity: O(n) - n is length of string / 2
# Space complexity: O(n) - n is the string
def reverse_inplace(string, first = 0, last = string.length - 1) 
  if first >= string.length/2 || string == ""
    return string
  else 
    temp = string[first]
    string[first] = string[last]
    string[last] = temp
    reverse_inplace(string, first += 1, last -=1)
  end
end


# Time complexity: O(n) - n being the number of bunnies/method calls
# Space complexity: O(n) - n being the number of bunnies/method calls
def bunny(n)
  if n == 0
    return 0 
  else
    return 2 + bunny(n-1)
  end
end


# Time complexity: O(n) - n is length of string
# Space complexity: O(n^2) - n is stack of method calls
def nested(s)
  if s == ""
    return true
  elsif s.length < 2 || s.length.odd? || s[0] == s[-1]
    return false
  else
    return nested(s[1..-2])
  end
end


# Time complexity: O(n) - n is length of array
# Space complexity: O(n^2) - n increases due to creation of new array upon each method call
def search(array, value)
  if array[0] == nil || array.empty?
    return false
  elsif array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end


# Time complexity: O(n) - n is length of string
# Space complexity: O(n^2) - n increases due to creation of new array upon each method call
def is_palindrome(s)
  if s.length < 2
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end


# Time complexity: O(n) - n is length of longest integer
# Space complexity: O(n^2) - n increases due to creation of new array upon each method call (or is it even more costly because there are two arrays created each time?)
def digit_match(n, m)
  x = n.to_s
  y = m.to_s
  count = 0

  if x.length == 0 || y.length == 0
    return count
  elsif x[-1] == y[-1]
    count += 1
  end

  return count + digit_match(x[0..-2], y[0..-2])  
end