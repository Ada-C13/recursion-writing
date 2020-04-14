# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n!)
# Space complexity: O(n!)
def factorial(n)
    raise ArgumentError if n < 0
    if n == 1
        return 1
    elsif n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
    new_string = ""
    s.length.times do |i|
        new_string += s[-1 - i]
    end
    return new_string
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return '' if s.length == 0
    return s[s.length - 1] + reverse(s[0...-1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 1
        return 2
    elsif n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    return true if s == ""
   
    if s.length.odd? || s[0] == s[-1]
        return false
    else  
        return nested(s[1...-1])
  end


end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    if array[0] == value
        return true
    elsif array.length <= 1
        return false
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length <= 1
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1...-1])
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
    count = 0
    if (n < 10) || (m < 10)
        if n%10 != m%10
            return 0
        else
            return 1
        end
    elsif n%10 == m%10
        count = 1
    elsif n == 0 || m == 0
        return
    end
    return count + digit_match(n/10, m/10)
end