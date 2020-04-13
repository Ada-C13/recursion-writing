# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0
        raise ArgumentError.new("Negative numbers aren't allowed.")
    else
        n == 0 ? 1:n * factorial(n-1)
    end 
end

# Time complexity: O(n)
# Space complexity: O(n^2)?
def reverse(s)
    if s.length <= 1
        return s
    else
        rs = reverse(s[1..-1])
        rs += s[0]
        rs
    end 
end

# Time complexity: O(n)
# Space complexity: O(n^2)?
def reverse_inplace(s)
    if s.length <= 1
        return s
    else
        rs = reverse(s[1..-1])
        rs += s[0]
        rs
    end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end 
end 

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    b = 0
    e = s.length - 1

    def valid?(current_beg, current_end, s)
        if current_beg > current_end 
            return true 
        elsif s[current_beg] == '(' && s[current_end] == ')'
            valid?(current_beg + 1, current_end - 1, s)
        else
            return false
        end 
    end 
    return valid?(b,e,s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, b = 0)
    if b >= array.length
        return false
    elsif array[b] == value
        return true
    else
        return search(array, value, b + 1)
    end
end

# Time complexity: O(log10n)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length <= 1
        return true
    elsif s[0] != s[-1] 
        return false
    else 
    return is_palindrome(s[1..-2])
    end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, c = 0)

    if n == 0 && m == 0
        return 1
    end 

    if n == 0 || m == 0
        return c
    end 

    if n%10 == m%10
        return digit_match(n/10, m/10, c+1)
    else 
        return digit_match(n/10, m/10, c)
    end 
end 