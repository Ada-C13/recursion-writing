# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Factorial

# Time complexity: O(n)
# Space complexity: O(n)


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

# Reverse

# Write a method `reverse` that accepts a string as a parameter and then returns the reverse of the string by reversing all letters and all words in the string.
# - e.g. reverse("hello world") will return "dlrow olleh"

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    return s if s.length <= 1

    reversed_s = reverse(s[1..-1])
    reversed_s += s[0]
    return reversed_s
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