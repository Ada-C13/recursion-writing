# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError, "number must be greater than 0" if n < 0
    n == 0 ? 1 : n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2), new string each time 
def reverse(s)
    s.length == 0 ? s : s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n/2) == O(n)
# Space complexity: O(n)
def reverse_inplace(s, left = 0, right = s.length-1) 
    return s if right <= left 
    s[left], s[right] = s[right], s[left]
    reverse_inplace(s, left+1, right-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    n < 1 ? 0 : 2 + bunny(n-1)
end

# Time complexity: O(n/2) == O(n)
# Space complexity: O(n)
def nested(s, left = 0, right = s.length-1)
    return true if s.length == 0 || left == right + 1
    return false if (s.length).odd? || s[left] != "(" || s[right] != ")"
    nested(s, left+1, right-1) 
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, pointer = 0)
    return true if value == array[pointer]
    return false if pointer >= array.length - 1
    search(array, value, pointer+1)
end

# Time complexity: O(n/2) == O(n)
# Space complexity: O(n)
def is_palindrome(s, left = 0, right = s.length-1)
    return true if left >= right
    return false if s[left] != s[right]
    is_palindrome(s, left+1, right-1)
end

# Time complexity: O(n) where n is the number of digits in the smallest number
# Space complexity: O(n)
def digit_match(n, m)
    n % 10 == m % 10 ? match = 1 : match = 0
    return match if n/10 == 0 || m/10 == 0 #no more nums
    return match + digit_match(n/10, m/10)
end


 
