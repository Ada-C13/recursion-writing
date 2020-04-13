# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - recurses for each element
# Space complexity: O(n) - recurses for each element
def factorial(n)
    raise ArgumentError, "Negative number" if n < 0 
    return 1 if n == 1 || n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n) - recurses for each element
# Space complexity: O(n^2) - new string for each recursion
def reverse(s)
    return "" if s.length == 0 
    return reverse(s[1,s.length]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return rev_help(s, 0, s.length - 1)  
end
  
def rev_help(s, first_letter, last_letter)
    if first_letter < last_letter
        temp = s[first_letter]
        s[first_letter] = s[last_letter]
        s[last_letter] = temp

        return rev_help(s, first_letter + 1, last_letter - 1)
    end

    return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n) - recurses for each element
# Space complexity: O(n^2) - new string for each recursion
def nested(s)
    return true if s == ""
    return false if s.length % 2 != 0
    return s[0] == "(" && s[-1] == ")" && nested(s[1,s.length - 2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    return false if array.empty?
    element = array.shift
    return element == value || search(array, value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    return true if s.length <= 1
    return s[0] == s[-1] && is_palindrome(s[1,s.length - 2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
    x, y = n.to_s, m.to_s

    return 0 if x == "" || y == "" 
    return (1 if x[-1] == y[-1]).to_i + digit_match(x[0,x.length - 1], y[0,y.length - 1])
end