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


# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    # base case is: return empty string for length == 0
    # recursive case: return reverse(s[0..-2])
    return "" if s.length == 0 
    return s[-1] + reverse(s[0..-2])
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

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    # def mystery7(word)
    #     if word.length < 2
    #       return true
    #     elsif word[0] != word[-1]
    #       return false
    #     else
    #       puts word[1..-2]
    #       return mystery7(word[1..-2])
    #     end
    #   end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end