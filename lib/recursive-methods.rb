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
    return true if s == ""
    return false if (s.length == 1 || s[0] != "(" || s[-1] != ")" )
    return nested(s[1..-2])
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
    return true if (s == "" || s.length == 1)
    return false if s[0] != s[-1]
    return is_palindrome(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
    n = n.to_s
    m = m.to_s
    
    return 0 if (n.length == 0 || m.length == 0)
    return (1 + digit_match(n[0..-2], m[0..-2])) if n[-1] == m[-1]
    return digit_match(n[0..-2], m[0..-2])
end