# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0 
    return 1 if n == 0
    return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
    i = 0 
    j = s.length - 1 
    
    while i < j 
        temp = s[i] 
        s[i] = s[j] 
        s[j] = temp 
        i += 1 
        j -= 1 
    end 
    return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0, j = s.length - 1)
    return s if i > j
    temp = s[i]
    s[i] = s[j] 
    s[j] = temp
    
    return reverse_inplace(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n, ear_count = 0)
    return ear_count if n == 0
    return bunny(n - 1, ear_count + 2)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, i = 0, j = s.length - 1)
    return true if i > j 
    return false if (s[i] != "(") || (s[j] != ")") 
    return nested(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
    
    return false if index > array.length
    return true if array[index] == value

    return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, i = 0, j = s.length - 1)
    return true if i > j 
    return false if s[i] != s[j]
    return is_palindrome(s, i + 1, j - 1)
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m, count = 0, i = - 1)
    # return count if n[i] == nil || m[i] == nil 
    return count if i < 0
    if n[i] == m[i]
        return(n, m, count = count + 1, i = i - 1)
    else
        return(n, m, i = i - 1)
    end

end