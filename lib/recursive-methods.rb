# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
    #base
    return 1 if n == 0
    raise ArgumentError if n < 0
    #recursion
    return n * factorial(n-1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    #base
    return s if s.length == 1 || s.length == 0
    #recursion
    first = 0
    last = s.length-1
    until first == last.abs()
        s[first],s[last] = s[last],s[first]
        first += 1
        last -= 1
    end
    return s
end

def reverse_helper(s, first, last)
    if first < last
        s[first],s[last] = s[last],s[first]
        return reverse_helper(s, first+1, last-1)
    end
    return s
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    return reverse_helper(s, 0, s.length-1)
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