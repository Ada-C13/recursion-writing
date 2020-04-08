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

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
end


# Time complexity: ?
# Space complexity: ?
def nested(s)
    # for every (, we need a )
    # base case would be the empty string or one set
        # return true
        # else return false
    # recurse if not empty or one

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
# ()

    if s == ""
        return true
    else 
        return nested(s)
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
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end