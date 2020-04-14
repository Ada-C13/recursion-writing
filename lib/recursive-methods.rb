# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0
  
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    return s if s.length <= 1
    return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return s if s.length <= 1
    return reverse_inplace(s[1..-1]) + s[0]
end

#Was 'reverse' and 'reverse_inplace''supposed to be the same code, or am I missing something in 'reverse' 
#where they should be different? The tests pass so it works but wanted to check. 

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    return false if array.empty?
    return true if array[0] == value
    return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end