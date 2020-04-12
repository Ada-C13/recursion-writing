# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0
    if n == 1 || n == 0 
        return 1
    else 
        return n * factorial(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n)
def reverse(s)
    if s.length == 0
        return ""
    else   
        return s[-1] + reverse(s[0...-1]) 
    end 
end

def reverse_helper(s, first = 0, last = s.length - 1)
    if first < last 
        temp = s[first]
        s[first] = s[last]
        s[last] = temp
        return reverse_helper(s, first + 1, last - 1)
    end 
    return s
end 
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return reverse_helper(s, 0, s.length - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(bunnies, ears = 0)
    if bunnies == (ears/2)   
        return ears 
    else 
        return bunny(bunnies, ears + 1)
    end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(string, first = 0, last = (string.length - 1))
    if string == "" || first > last #if first index is greater than the last, all () were checked, that is the base case.  
        return true 
    elsif (string.length % 2 != 0) 
        return false 
    elsif string[first] != "(" || string[last] != ")"
        return false 
    else 
        return nested(string, first + 1, last - 1)
    end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0) 
    return false if array == []
    if value == array[index]
        return true 
    elsif index == array.length - 1
        return false
    else 
        return search(array, value, index + 1)
    end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length < 2 
        return true 
    elsif s[0] != s[-1]
        return false
    else 
        return is_palindrome(s[1..-2])
    end
end


# Time complexity: 0(log10 n)
# Space complexity: O(n)

#a number mod by 10 gives me the last digit, then I divided by 10 to remove the last digit
def digit_match(n, m)
    
    if (n % 10) == (m % 10)
        if n == 0 && m == 0
            return 1
        elsif n == 0 || m == 0
            return 0
        end 
        return 1 + digit_match(n/10, m/10)
    else
        if(n / 10 == 0) || (m / 10 == 0) # Used to determine if either number is a single digit
            return 0
        end
        return digit_match(n/10, m/10)
    end
    
    
end


6253080
84

10
20

0
0






# digit_match(10, 20)

# if 10 == 0 && 20 == 0
#     return 1
# elseif 10 ==0 || 20 == 0
#     return result (0)
# elseif 10% 10 == 20 % 10
#     result += 1
# end
# return 1 + digit_match(1, 2) #1


# digit_match(1,2)
# return 0 + digit_match(0, 0) #1


# digit_match(0, 0);
# return 1;