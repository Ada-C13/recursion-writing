# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity:  O(n)  
# Space complexity: O(1)

def factorial(n)
    # if wrong argument is provided
    if n < 0
        raise ArgumentError
    end
    #base case
    if n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end


# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    #base case
    if s.length == 0
        return ""
    else
        return s[-1] + reverse(s[0..-2])
    end
        
end


# Time complexity: O(n) 
# Space complexity: O(n^2)
def reverse_inplace(s)
    #base case
   reverse_helper(s, 0, s.length - 1)
end

def reverse_helper(s, first, last)
 if s.length <= 1
   return s
 end

 if first == last
   return s
 end

 if first < last
   s[first], s[last] = s[last], s[first]
 end

 reverse_helper(s, first + 1, last - 1)
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    # base case
    if n == 0
        return 0
    else
        return 2 + bunny(n - 1)
    end
end


# Time complexity: O(n/2)
# Space complexity: O(n)
def nested(s)
    if s.length == 0
      return true
    end
  
    if s.length == 1
      return false
    end
  
    if s[0] == "(" && s[-1] == ")"
      return nested(s[1..-2])
    else
        return false
    end
end


# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    if array.length == 0
      return false
    end
  
    if array[-1] == value
      return true
    else 
      return search(array[0..-2], value)
    end
end


# Time complexity: O(n/2)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length <= 1
      return true
    end
  
    if s[0] == s[-1]
      return is_palindrome(s[1..-2])
    else
      return false
    end
end


# Time complexity: O(min(m,n))
# Space complexity: O(min(m,n))
def digit_match(n, m)
    # base case if both numbers are zero
    if n == 0 && m == 0
      return 1
    end

    # base case if one of the inputs is less than 10
    if n < 10 or m < 10
      if n % 10 == m % 10
        return 1
      else 
        return 0
      end
    end
  
    if n % 10 == m % 10
      return 1 + digit_match(n/10, m/10)
    else
      return digit_match(n/10, m/10)
    end
end