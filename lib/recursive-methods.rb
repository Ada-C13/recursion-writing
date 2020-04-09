# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    #base
    return 1 if n == 0
    raise ArgumentError if n < 0
    #recursion
    return n * factorial(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n)
def reverse(s)
    #base
    return s if s.length == 1 || s.length == 0
    #recursion
    first = 0
    last = s.length-1
    until first == last.abs()
        s[first],s[last] = s[last],s[first]
        first += 1
        last -= 1
    end
    return s
end

def reverse_helper(s, first, last)
    if first < last
        s[first],s[last] = s[last],s[first]
        return reverse_helper(s, first+1, last-1)
    end
    return s
end

# Time complexity: O(n^2)
# Space complexity: O(n)
def reverse_inplace(s)
    return reverse_helper(s, 0, s.length-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    #base
    return 0 if n == 0
    #recursion
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    return true if s.length == 0
    return false if s.length.odd?

    s.count("(") == s.count(")")
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    return false if array.length == 0

    return search_helper(array, value)
end

def search_helper(array, to_find, current_index = 0)
    # Base Cases
    return false if current_index == array.length
    return true if array[current_index] == to_find
  
    # Recursive Case
    return search_helper(array, to_find, current_index + 1)
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end