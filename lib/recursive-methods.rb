# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity:  O(n) because it calls the function n times.
# Space complexity: O(n^2)because it is taking the memory of each value and the memory for each call in the stack
def factorial(n)
  if n == 0
    return 1
  elsif n < 0
    raise ArgumentError,'number cant be less than zero'
  end

  return n * factorial(n-1)

end

# Time complexity:  O(n) because it calls the function n (or s.length) times.
# Space complexity: O(n^2)because it is taking the memory of each value and the memory for each call in the stack

def reverse(s)
  if s == ''
    return ''
  elsif s.length == 1
    return s[0]
  end
  
  return "#{s[-1]}" + reverse(s[0..-2])
end

# Time complexity:  O(n) because it calls the helper function n times.
# Space complexity: O(n)because it is changing s for every call and holding it to add more later (tail recursion?). 

def reverse_helper(s, first, last)
  if first < last
    temp = s[first]
    s[first] = s[last]
    s[last] = temp
    return reverse_helper(s,first + 1, last - 1)
  end
  return s 
end

def reverse_inplace(s)
  return reverse_helper(s, 0, s.length-1)
end


# Time complexity: O(n) because it makes n calls
# Space complexity: O(n^2) because it make n calls and hold a value for each call
def bunny(n)
    if n == 0
      return 0
    end

    return 2 + bunny(n-1)
end

# Time complexity: O(n) it goes through n/2 but we drop the constant
# Space complexity: O(n) it goes through n/2 but we drop the constant also we are not saving the string each time so it is NOT squared


def nested(s)
  
  if s.length <= 2 
    if s == "()"
      return true
    elsif s == ""
      return true
    else
      return false
    end  
  end

  front = 0
  back = (s.length - 1)

  if s[front] == "(" && s[back] ==")"
    return nested(s[1...back])    # here is the recursion part
  else
    return false
  end
end

# Time complexity: O(n) because it makes and max of n calls
# Space complexity: O(n) becaseu it is just the call stack
def search(array, value)
  if array.length == 0
    return false
  elsif array[0] == value
    return true
  end

  return search(array[1...array.length], value)
  
end

# Time complexity: O(n) it goes through n/2 but we drop the constant
# Space complexity: O(n) it goes through n/2 but we drop the constant also we are not saving the string each time so it is NOT squared

def is_palindrome(s)
  if s.length <= 2 
    if s.length == 2 && s[0] == s[1]
      return true
    elsif s == "" || s.length == 1
      return true
    else
      return false
    end  
  end

  front = 0
  back = (s.length - 1)

  if s[front] == s[back]
    return is_palindrome(s[1...back])    # here is the recursion part
  else
    return false
  end
end

# Time complexity: O(n) n is the shorter number. It goes through n's length once
# Space complexity: O(n) n is the shorter number 
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  if n.length == 0 || m.length == 0
    return 0
  end

  if n[n.length - 1] == m[m.length - 1]
    return 1 + digit_match(n[0...(n.length - 1)], m[0...(m.length - 1)])
  else  
    return  digit_match(n[0...(n.length - 1)], m[0...(m.length - 1)])
  end
end