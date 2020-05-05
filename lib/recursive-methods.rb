# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    return 1 if n == 0
    raise ArgumentError, "Sorry! I can't calculate negative numbers!" if n < 0
    return (n * factorial(n - 1))
end

# Time complexity: O(n)
# Space complexity: O(n2)
def reverse(s)
    return s if s.length <= 1
    
    short_s = s[1..(s.length - 1)]
    return reverse(s[short_s]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return reverse_helper(s, 0, (s.length - 1))
end

def reverse_helper(s, i, j)
    if i < j
        s[i], s[j] = s[j], s[i]
        return reverse_helper(s, (i + 1), (j - 1))
    end
    return s
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    #n is num of bunnies. compute total num of ears for all bunnies, no loops and no multiplication
    return 0 if n == 0

    return 2 + bunny(n - 1)
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