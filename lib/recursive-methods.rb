# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: 0(n)
# Space complexity: 0(n)
# source: video example in class
def factorial(n)
    if n < 0
        raise ArgumentError
    elsif n == 1 || n == 0
        return 1 
    else
        return n * factorial(n-1)
    end
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse(s)
    if s.length <= 1
        return s 
    else
        return s[-1] + reverse(s[1...-1]) + s[0]
    end
end

# Time complexity: 0(n)
# Space complexity: 0(1)
def reverse_inplace(s, low = 0, high = s.length - 1) 
    if low >= high
        return s
    else
        temp = s[high]
        s[high] = s[low]
        s[low] = temp
    end
    
    return reverse_inplace(s, low +=1, high -= 1)
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end


# Time complexity: 0n
# Space complexity: 0(n^2)
def nested(s)
    if s == ""
        return true
    elsif s[0] == "(" && s[-1] == ")" && nested(s[1...-1])
         return true
    else 
        return false
    end
end

# Time complexity: 0(n^2)
# Space complexity: 0(n^2) <-- becuase I'm making a new array
def search(array, value)
    if array.length == 0
        return false
    elsif value == array[0]
        return true
    else 
        return search(array[1..-1], value)
    end
end


# Time complexity: 0(n^2)
# Space complexity: 0(n^2) <-- becuase I'm making a new array
def is_palindrome(s)
    if s.length <= 2 && s[0] == s[-1]
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: 0(n)
# Space complexity: (0n^2)
def digit_match(n, m)
    if n == 0 && m == 0
        return 1
    end
  
    if n < 10 or m < 10
        if n % 10 == m % 10
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