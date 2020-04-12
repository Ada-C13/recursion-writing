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

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end