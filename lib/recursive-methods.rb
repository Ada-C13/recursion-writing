# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    # base case is: return 1 if n = 0
    # recursive case is: n * factorial(n-1)
    if n < 0
        raise ArgumentError
    elsif n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    # base case is: return "" for empty string
    # recursive case: reverse what is left of string that had last element sliced off
    newStr = s
    return "" if newStr.length == 0
    return newStr.slice!(-1) + reverse(newStr)
end


def recursive_swap(s, low, high)
    # base case is: return s when high and low cross
    # recursive case: return recursive_swap(s, low + 1, high - 1)
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
    # base case: return 0 when n == 0
    # recursive case: return 2 + bunny(n-1)
    return 0 if n == 0
    return 2 + bunny(n-1)
end


# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    # base case: empty string or one pair of parens
    # recursive case: nested(s[1..-2])
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
# Space complexity: O(n)
def search(array, value)
    # base case: return false if array is empty
    # recursive case: return search(array[1..-1], value)
    return false if array.empty?

    if array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    # base case: return true for empty string
    # recursive case: return is_palindrome(s[1..-2])
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
def digit_match(num1, num2)
    # base case: return match count when length of either a or b is 0
    # recursive case: return digit_match(a[0..-2], b[0..-2])

    # check ones place first
    if num1 < 10 || num2 < 10
        return num1 % 10 == num2 % 10 ? 1 : 0
    end

    # if both nums > 10, check at least tens place
    if num1 % 10 == num2 % 10
        return 1 + digit_match(num1/10, num2/10)
    end

    return digit_match(num1/10, num2/10)
end

# couldn't get the below to work?:
# if a[-1] == nil || b[-1] == nil
#     return 0
# elsif a[-1] != b[-1]
    # puts "Here's a[0..-2]: #{a[0..-2]}"
#     return digit_match(a[0..-2], b[0..-2])
# else
#     return 1 + digit_match(a[0..-2], b[0..-2])
# end


# ADDED FUN
# - fib sequence: (0 1 1 2 3 5 8 13 21 34)

def fib(n)
    # base case: return 0 if n == 0 OR if n == 1 return 1
    # recursive case: return fib(n-2) + fib(n-1)
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