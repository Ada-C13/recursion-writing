# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?


# factorial(n) Write a method factorial that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).

# e.g. fact(4) = 4 * 3 * 2 * 1 = 24

def factorial(n)
    if n < 0
        raise ArgumentError, "Please use a positive number"
    elsif n == 0
        return 1
    else
        return n * factorial(n-1)
    end
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