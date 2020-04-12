# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
# Thank you to Chris-recursion video
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
# Why can't I use .last?
def reverse(s, first = 0, last = s.length-1)
    return s if first > last

    holder = s[first]
    s[first] = s[last]
    s[last] = holder

    return reverse(s, first +1, last -1)
end

# Time complexity: O(n)
# Space complexity: O(1)
# source: https://medium.com/@txea/reverse-a-string-with-recursion-a3f8505ffb73
def reverse_inplace(s)
    return s if s.length <= 1
    gnirts = reverse_inplace(s[1..-1])
    gnirts += s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(1)
# Talk to tutor
def nested(s)
    return true if s == ""
    if s[0] == "(" && s[-1] == ")"
        s.slice!(0)
        s.slice!(-1)
        nested(s)
    else
        return false
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
    return false if array.empty? || index >= array.length
    return true if array[index] == value
    return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
# source: https://github.com/Ada-C13/recursion-tracing
# https://stackoverflow.com/questions/57966597/how-to-check-if-a-word-is-a-palindrome-without-using-string-reverse-method-in

def is_palindrome(s, i = 0, j = s.length - 1 )
    return true if i >= j
    s[i] == s[j] && is_palindrome(s, i + 1, j - 1)
end
    # Wanted somethign like this review w/tutor
    # return true if s == ""
    # s[0] == s[-1] ? s = s[1..-2] : false
    # s.length > 1 ? is_palindrome(s) : true


# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end