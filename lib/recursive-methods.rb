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

# Time complexity: O(n)
# Space complexity: O(n^2)
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

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    # input validation
    return false if array.nil?
    # base case
    i = 0
    return search_helper(array, i, value)
end

def search_helper(array, i, value)
    # base case
    if i == array.length
        return false
    end
    if array[i] == value
        return true
    end
    # recursive case
    search_helper(array, i+1, value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    # input validation
    return true if s.length == 0
    i = 0
    j = s.length-1
    return palindrome_helper(i, j, s)
end

def palindrome_helper(i, j, s)
    # base case
    return true if j == i
    return false if s[j] != s[i]
    # recursive case
    palindrome_helper(i+1, j-1, s)
end

# Time complexity: O(lg n)
# Space complexity: O(lg n)
def digit_match(n, m)
    # input validation
    return 1 if n == 0 && m == 0
    # base case
    match_helper(n, m, 0)
end

def match_helper(n, m, match)
    if n == 0 || m == 0
        return match
    end
    if (n%10) == (m%10)
        match += 1
    end
    return match_helper(n/10, m/10, match)
end

# Time complexity: O(n)
# Space complexity: O(n)
def fib(n)
    return 0 if n == 0
    fib_helper(0, 1, n-1)
end

def fib_helper(i, j, n)
    # base case
    return j if n == 0
    # recursive case
    return fib_helper(j, i+j, n-1)
end