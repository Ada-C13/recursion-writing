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

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
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