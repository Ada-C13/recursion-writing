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
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
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
### this one doesn't work yet, still can't figure it out :(
def negative(n)
    amount = n.to_s
    return ("-" + amount).to_i
end 

def digit_match(n, m, count = 0, i = -1)
    n = n.to_s
    m = m.to_s
    puts negative(m.length + 1)
    if n.length > m.length 
        return count if i == negative(m.length + 1)
    else 
        return count if i == negative(n.length + 1)
    end 
    # return count if n[i] == nil || m[i] == nil 
    if n[i] == m[i]
        return digit_match(n, m, count = count + 1, i = i - 1)
    else
        return digit_match(n, m, i = i - 1)
    end
end

