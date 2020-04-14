# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0
        raise ArgumentError, "Will only accept positive intergar"
    end

    return 1 if  n == 0 
    
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    return s if s.length == 0

    return "#{s[-1]}#{reverse(s[0...(s.length-1)])}"
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)

    def reverse_helper( s, first, last = s.length - 1 )
        if first < last
            temp = s[first]
            s[first] = s[last]
            s[last] = temp
            ## s[first] , s[last] = s[last], s[first]
            return reverse_helper(s, first + 1, last - 1)
        end

        return s
    end

  return reverse_helper( s, 0, s.length - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n < 0
        raise ArgumentError, "can't have negative number for the bunny count!"
    end
    return 0 if n == 0

    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    # will need the length to be even to make a pair
    if s.length.odd?
        return false
    elsif s == ''
        return true
    elsif (s[0] != "(" || s[-1] != ")")
        return false
    else 
        # move one pair inward at a time
        return nested(s[1..-2])
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    if array.length == 0
        return false
    end

    def search_helper(array, value ,index = 0)
        # two base cases
        return false if index > array.length - 1

        if array[index] == value
            return true
        else
            return search_helper(array, value, index + 1)
        end
    end
    
    return search_helper(array, value, index = 0)
end

# Time complexity: O(n/2) 
# Space complexity: O(n)
def is_palindrome(s)
    return true if s == ""

    if s[0] != s[-1] 
        return false
    end 
    
    return is_palindrome(s[1..-2])
    
end

# Time complexity: O(log n with base of 10)
# Space complexity: O(log n with base of 10)
def digit_match(n, m)
    # base case
    if n < 0 || m < 0
        return 0
    end
    
    
    #comparing the smallest digits
    if n < 10 || m < 10
        if (n < 10 && n == m % 10 ) ||(m <10 &&  n % 10 == m)
            return 1
        else 
            return 0
        end
    end 
    
    if n % 10 == m % 10
        return 1 + digit_match(n/10, m/10)
    else
        return digit_match(n/10, m/10)
    end
end

#Added Fun
# Time complexity: O(2^n)
# Space complexity: O(n)
# reference from Khan Academy youtube https://www.youtube.com/watch?v=zg-ddPbzcKM (with very detail explanation!)
# Don't think I could come up with the answer without the video, very amazed that how short the code could be!!

def fibonacci(num)
    if num < 2
        return num
    else
        return (fibonacci(num - 1)+ fibonacci(num -2)) 
    end
end