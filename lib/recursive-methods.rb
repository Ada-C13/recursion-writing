# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0 
        raise ArgumentError.new("Number must be greater than zero!")
    elsif n == 1
        return n
    elsif n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    if !s || s.length == 0
        return s
    else
        return reverse(s[1..-1]) << s[0]
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    if !s || s.length == 0
        return s
    else
        return reverse_inplace(s[1..-1]) << s[0]
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n - 1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    if s == ""
        return true
    elsif (s.length % 2) != 0
        return false
    elsif s[0] == "(" && s[-1] == ")"
        return nested(s[1..-2])
    end

    return false
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    if array[0] == value
        return true
    elsif array.length == 0
        return false
    else
        array.delete_at(0)
        search(array, value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length < 2
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(n), n is the number of places in the smallest number
# Space complexity: O(n)
def digit_match(n, m)
    if n % 10 == m % 10
        matches = 1
    else
        matches = 0
    end
    
    if n / 10 == 0 || m / 10 == 0
        return matches
    else
        return matches + digit_match(n / 10, m / 10)
    end
end