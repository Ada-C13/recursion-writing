# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(1)
def factorial(n)
    if n < 0
        raise ArgumentError, "cant do factorials for numbers less than 0" 
    elsif    
        n==0
        return 1
    else 
        return n * factorial(n-1)
    end
end

# Time complexity: O(n) n is s.length
# Space complexity: O(n) n is str
def reverse(s)
    str =''
    index = s.length-1
    str= reverse_helper(s,str,index)
    return str

end

    def reverse_helper(s,str,index)
        if str.length == s.length
            return str
        else 
            str+= s[index]
            reverse_helper(s,str,index-1)
        end
        
    end

# Time complexity: O(n) n is s.length
# Space complexity: O(1)
def reverse_inplace(s)
    b = 0
    e = s.length - 1
    reverse_inplace_helper(b,e,s)
    return s
end
    
    def reverse_inplace_helper(b,e,s)
    if s == '' || b > s.length/2
        return s
    else 
        temp = s[b]
        s[b] = s[e]
        s[e] = temp
        reverse_inplace_helper(b+1,e-1,s)
    end
end

# Time complexity: O(n)
# Space complexity: O(1)
def bunny(n)
    if n < 0 
      raise ArgumentError, "bunnies cannot be a negative number!"
    elsif
      n == 0
      return n
    else
      return 2+ bunny(n-1)
    end
end

# Time complexity: O(n) n is s.length
# Space complexity: O(1)
def nested(s)
    x = 0
    if s == ''
        return true
    elsif
        s.length%2 != 0
        return false
    else
        return nested_helper(s,x)
    end
       
end

def nested_helper(s,x)
    if x >= s.length/2
        return true
    elsif  s[x]== "(" && s[s.length-1-x] == ")"
        nested_helper(s,x+1) 
    else 
        return false
    end  
end 

# Time complexity: O(n) n is array.length
# Space complexity: O(1)
def search(array, value)
    index = 0
    if array == []
        return false
    else search_helper(array,value,index)
    end
end

   def search_helper(array,value,index)
    if array[index] == value
        return true
    elsif index != array.length-1
        search_helper(array,value,index+1)
    else
        return false
    end
   end

# Time complexity: O(n) s.length
# Space complexity: O(1)
def is_palindrome(s)
    index = 0
    if s == ''
        return true 
    else 
        is_palindrome_helper(s,index)
    end
         
end

def is_palindrome_helper(s,index)
    if s[index]== s[s.length-1-index]
        is_palindrome_helper(s,index+1)
    elsif index >= s.length/2
        return true
    else 
        return false
    end
end


# Time complexity: O(shorter)
# Space complexity: O(narr+marr)
def digit_match(n, m)
    narr = n.digits
    marr = m.digits
    shorter =  (narr.length) < (marr.length) ? (narr.length) : (marr.length)
    matches = 0
    index = 0 
    if n < 0 || m < 0
        raise ArgumentError, "n and m cannot be negative"
    else
        digit_match_helper(narr,marr,shorter,index,matches)
    end
end

def  digit_match_helper(narr,marr,shorter,index,matches)
    if index < shorter && narr[index] == marr[index]
        matches +=1
        digit_match_helper(narr,marr,shorter,index+1,matches)
    elsif index < shorter
        digit_match_helper(narr,marr,shorter,index+1,matches)
    else 
        return matches
    end
end
