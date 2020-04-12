# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0 
        raise ArgumentError, "number must be >= 0"
    end
    # base case
    return 1 if n == 0
    # recursive case
    return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
    # base case
    return s if s.length < 2
    # recursive case
    return s[-1] + reverse(s[0..-2]);
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0, j = (s.length - 1))
    # base case
    return s if i >= j
    # recursive case
    temp = s[i]
    s[i] = s[j]
    s[j] = temp
    return reverse_inplace(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    # base case
    return 0 if n == 0
    # recursive case
    return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, i = 0, j = (s.length - 1))
    # base case
    return true if s == ""
    return true if i > j
    return false if s.length.odd?
    return false if s[i] != "(" || s[j] != ")"
    # recursive
    return nested(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
    # base case
    return false if (index >= array.length)
    return true if (array[index] == value)
    # recursive case
    return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
    # base case
    return true if s.length <= 1
    return false if s[0] != s[-1]
    # recursive case
    return is_palindrome(s[1..-2]);
end

# Time complexity: O(n) where n = number of digits
# Space complexity: O(n) where n = number of digits
def digit_match(n, m, count = 0)
    # base case
    return 1 if n == 0 && m == 0
    return count if n == 0 || m == 0
    # recursive case
    if n % 10 == m % 10
        return digit_match(n/10, m/10, count + 1)
    else
        return digit_match(n/10, m/10, count)
    end
end