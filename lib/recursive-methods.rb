# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
    # Input validation
    raise ArgumentError if n < 0 
    # Base case
    return 1 if n == 0 
    # Recursive case
    return n * factorial(n-1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    # Input validation
    return nil if s == nil
    return '' if s.length == 0
    # Base case
    return s if s.length == 1
    # Recursive case
    return reverse(s[1..s.length-1]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    # Base case

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