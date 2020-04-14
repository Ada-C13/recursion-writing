# Authoring recursive algorithms. Add comments including time and space complexity for each method.


# factorial(n) Write a method factorial that accepts an integer parameter n 
# and that uses recursion to compute and return the value of n factorial (also known as n!).


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



# reverse(s) Write a method reverse that accepts a string as a parameter 
# and then returns the reverse of the string by reversing all letters and 
# all words in the string.


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


# reverse_inplace(s) Write a method reverse_inplace that accepts a string as 
# a parameter and then reverses the string in place using a recursive algorithm.

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

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end