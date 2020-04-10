# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: o(1)
# Space complexity: o(n)
def factorial(n)
    if n < 0 
      raise ArgumentError 
    end
    if n == 0
      return 1;
    end 
    return n * factorial(n-1);
end

# Time complexity: o(n)
# Space complexity: o(n) where n is the length of the string
def reverse(s, current = s.length-1, reversed_string="")
  if current >= 0
    reversed_string += s[current] 
    current -= 1
    reverse(s, current, reversed_string)
  else
    return reversed_string
  end 
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  

    
end

# Time complexity: o(n)
# Space complexity: o(n)
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end   
end

# Time complexity: o
# Space complexity: o(n/2) or o(n) 
def nested(s)
  if s.length%2 != 0 
    return false
  end
  if s.length == 0 
    return true
  end

  start = 0
  ending = s.length - 1
  while start < ending
    if s[start] != "(" || s[ending] != ")" 
      return false;
    end
    start += 1
    ending =- 1
    return nested((s[start...ending]));
  end
end

# Time complexity: o(n)
# Space complexity: o(n) where n is the length of the array
def search(array, value, start=0)
  if start < array.length  
    if value == array[start] 
        return true
    end
    start+=1
    return search(array, value, start)
  end
  return false
end

# Time complexity: o(n)
# Space complexity: o(n/2) or o(n) where n is the amount of chars
def is_palindrome(s)
    if s.length <= 1
        return true
    end 
    start = 0
    ending = s.length - 1
    
      while start < ending
        if s[start] != s[ending]
          return false
        end
        start += 1
        ending =- 1
        return is_palindrome(s[start...ending]);
    end
end

# Time complexity: o(log(n)) 
# Space complexity: o(n+m) where n and m are the amount of digits 
def digit_match(n, m, count=0)

  if n == 0 && m == 0 
    return 1;
  end

  if n%10 == m%10
    count+=1;
  end 

  if n/10 == 0 || m/10 == 0
    return count
  end 

  return digit_match(n/10, m/10, count)
end

