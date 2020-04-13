# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0
        raise ArgumentError
    elsif n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
    return "" if s.length == 0 
    return s[-1] + reverse(s[0..-2])
end

# helper method for reverse_inplace()
# Time complexity: O(n)
# Space complexity: O(n)
def recursive_swap(s, low, high)
    if high <= low
        return s
    else
        s[low], s[high] = s[high], s[low]
        return recursive_swap(s, low + 1, high - 1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return recursive_swap(s, 0, s.length - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
    return false if s.length.odd?

    if s == "()" || s == ""
        return true
    elsif s[0] != "(" || s[-1] != ")"
        return false
    else
        return nested(s[1..-2])
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
    return false if array.empty?

    if array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
    if s.length == 0
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(log base 10 of n)
# Space complexity: O(log base 10 of n)
def digit_match(num_1, num_2)

    # check ones place first
    if num_1 < 10 || num_2 < 10
        return num_1 % 10 == num_2 % 10 ? 1 : 0
    end

    # if both nums > 10, check at least tens place
    if num_1 % 10 == num_2 % 10
        return 1 + digit_match(num_1/10, num_2/10)
    end

    return digit_match(num_1/10, num_2/10)
end


# ADDED FUN
# fib sequence eg: (0 1 1 2 3 5 8 13 21 34)
# Time complexity: O(n)
# Space complexity: O(n)
def fib(n)
    if n < 0
        raise ArgumentError    
    elsif n == 0
        return 0
    elsif n == 1
        return 1
    else
        return fib(n-2) + fib(n-1)
    end
end