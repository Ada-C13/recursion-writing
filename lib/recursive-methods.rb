# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    # Input validation
    raise ArgumentError if n < 0 
    # Base case
    return 1 if n == 0 
    # Recursive case
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
    # Input validation
    return nil if s == nil
    return '' if s.length == 0
    # Base case
    return s if s.length == 1
    # Recursive case
    return reverse(s[1..s.length-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    # Input validation
    return nil if s == nil
    return '' if s.length == 0    
    i = 0
    j = s.length-1
    reverse_helper(s, i, j)
    return s 
end

def reverse_helper(s, i, j)
    if i > j
        return
    end
    s[i], s[j] = s[j], s[i]
    reverse_helper(s, i+1, j-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    # base case
    return 0 if n == 0
    # recursive case
    return 2 + bunny(n-1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    # input validation
    return true if s.length == 0
    # base case
    return false if s.length == 1
    if s[0] != '(' || s[-1] != ')'
        return false
    end
    # recursive case
    return nested(s[1..-2])
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