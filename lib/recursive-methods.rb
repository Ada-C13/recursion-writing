# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0 
        raise ArgumentError,'only input positivie integer'
    end 
    if (n == 1 || n == 0 )
        return 1
    else 
        return n * factorial(n-1)
    end 
end

# Time complexity: O(n)
# Space complexity: 0(n)
def reverse(s)
    if s.length <=1 
        return s 
    end 
    reverseword = ""
    i = s.length 
    while i > 0 
        reverseword += s[i-1]
        i -= 1
    end 
    return reverseword

end



# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    if s.length <= 1
        return s 
    else  
        return s[-1] + reverse(s[0..-2]) 
    end 
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else  
        return 2 + bunny(n-1)
    end 
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    if s.length == 0 
        return true
    end 
    if (s[0] == "(" && s[-1] == ")")
        return nested(s[1..-2])
    else  
        return false
    end 
    
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    if array[0] == value 
        return true  
    elsif array.length <= 1
        return false 
    else   
        return search(array[1..-1],value)
    end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length <=1 
        return true 
    end 
    if s[0] == s[-1]
        return is_palindrome(s[1..-2])
    else  
        return false 
    end 
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
    if (n.to_s.length == 0 || m.to_s.length == 0)
        return 0 
    end 
    if n.to_s[-1] == m.to_s[-1]
        return 1 + digit_match(n.to_s[0..-2], m.to_s[0..-2])
    else  
        return 0 + digit_match(n.to_s[0..-2], m.to_s[0..-2])
    end 
end

# For Fun 
def fib(n)
    if n <= 0
        return 0
    elsif n == 1
        return 1
    else  
        return fib(n-2) + fib(n-1)
    end  
end 