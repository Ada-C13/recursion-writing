# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n == 0
    return 0;
  else
    return 2 + bunny(n-1);
  end   
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    if s.length%2 != 0 
        return false
    end
      if s.length == 0 
        return true
      end

      start = 0;
      ending = s.length - 1;
      while start < ending
        if s[start] != "(" || s[ending] != ")" 
          return false;
        end
        start += 1;
        ending =- 1;
        return nested((s[start...ending]));
      end
    
end

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
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

