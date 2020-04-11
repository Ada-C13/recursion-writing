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
    return s if s.length == 1 || s.length == 0
    return reverse_helper(s,first = 0, last = s.length - 1)
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
# Space complexity: O(n^2) because s[1..-2] creates a new string with each recursion
def nested(s)
    return true if s.length == 0
    return false if s.length.odd?

    # s.count("(") == s.count(")")
    return (s[0] === "(" && s[-1] === ")") && nested(s[1..-2]);
end

# Time complexity: O(n)
# Space complexity: O(n^2)
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

# Time complexity: O(n)
# Space complexity: O(n^2) because word[1..-2] creates a new string with each recursion
def is_palindrome(word)
    if word.length < 2
        return true
    elsif word[0] != word[-1]
        return false
    else
        return is_palindrome(word[1..-2])
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2) because n[0...-1] & m[0...-1] create a new string with each recursion
def digit_match(n, m)
    n = n.to_s
    m = m.to_s
    return 0 if n.length == 0 || m.length == 0

    n[-1] == m[-1] ? count = 1 : count = 0

    return count + digit_match(n[0...-1], m[0...-1])
end

def fib(n)
    n
end
