# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Write #1 
# Time complexity: O(n) because it runs n times
# Space complexity: O(n) because functions are called n time 

def factorial(n)
  raise ArgumentError.new("n should be greater than or equal to 0") if n < 0
  return 1 if n == 1 || n == 0
  return n * factorial(n-1)
end

############################################################################################

# Write #2
# Time complexity: ?  O(n) because it runs n times
# Space complexity: ? O(n^2) beacuase a new string is created everything the function is called
def reverse(s)
  return '' if s.length == 0
  return s[s.length - 1] + reverse(s[0...-1])
end

##############################################################################################

# Write #3
# Time complexity: ? O(n) beacause it runs n time - n is a length of string
# Space complexity: ? O(n) becasue we don't create any new string - functions are called n times - n is length of string
def reverse_inplace(s,first = 0, last = s.length - 1)
  if first < last
    s[first], s[last] = s[last], s[first] # learned this from Chris during lecture
    return reverse_inplace(s, first + 1, last - 1)
  end
  return s
end

### Alternative way to solve Write #3 with the helper method
# Wave 3
# Time complexity: O(n)
# Space complexity: O(n)

# def reverse_inplace(s)
#   return reverse_helper(s, 0 , s.length - 1)
# end

    ## create a helper method for reverse_inplace

# def reverse_helper(s, first, last)
#   if first < last
#     temp = s[first]
#     s[first] = s[last]
#     s[last] = temp
#     return reverse_helper(s, first + 1, last - 1)
#   end
#   return s
# end

##################################################################################################
# Write #4
# Time complexity: O(n) beacause it runs n time - n is a length of string
# Space complexity: O(n) becasue functions are called n times - n is length of string
def bunny(n)
  return 0 if n == 0 
  return 2 + bunny(n - 1)
end

##################################################################################################
# Write #5

# Time complexity: O(n) beacuse it runs n times - n is length of string
# Space complexity: O(n) beacuse the functions is called n time. 
def nested(s, first = 0, last = s.length - 1)
  return false if s.length%2 != 0
  return false if (first < last) && (s[first] == s[last])
  if (first < last) && (s[first] != s[last])
    return nested(s, first + 1, last - 1)
  end
  return true
end

# Alternative way to solve Write #5
# Write #5
# Time complexity: O(n) because it runs n times - n is the length of string
# Space complexity: O(n^2) because a new string is careated when the function is called 
# def nested(s)
#   mid = s.length/2
#   return true if s == ""
#   return false if s[mid-1] == s[mid] || s[0] == s[-1]  
#   if s.length%2 != 0 
#     return false
#   elsif s.length%2 == 0 && s[0] != s[-1] 
#     return nested(s[1...-1])
#   end
#   return true
# end

###############################################################################################

# Write #6
# Time complexity: O(n) beacuse it runs n times - n is length of string
# Space complexity: O(n) beacuse we don't create any new array each time the function is called. The functions are called n times - n is length of string
def search(array, value, index = 0 )
  return false if array == []
  return true if array[index] == value 
  if (index < array.length) && (array[index] != value)
    return search(array,value,index + 1)
  end
  return false
end

### Alternative way to solve Write #6
# Write #6
# Time complexity: O(n)
# Space complexity: O(n^2) beause a new array is careated each time the function is called
# def search(array, value)
#   return false if array == []
#   return true if array[0] == value
#   return search(array[1..-1], value)
# end

####################################################################################################
# Write #7
# Time complexity: O(n) because it runs n time - n is length of string
# Space complexity: O(n) because no new array is crated when the function is called, and the functions are called n times - n is length of string
def is_palindrome(s, first = 0, last = s.length - 1 )
  return true if s == ""
  return false if first < last && s[first] != s[last]
  return true if first == last && s[first] == s[last]
  if first < last && s[first] == s[last]
    is_palindrome(s, first + 1, last - 1)
  end
end

####### Alternative way to solve Write #7 - Space complexity is O(n^2)
# Time complexity: O(n) because it runs n times 
# Space complexity: O(n^2) because new string is created each time the function is called
# def is_palindrome(s)
#   return true if s == "" 
#   return false if s[0] != s[-1]
#   return is_palindrome(s[1...-1]) 
# end

######## Alternative way to solve write # 7 using a helper method
# Wave #7 - using helper method
# Time complexity: O(n)
# Space complexity: O(n)

# def is_palindrome(s)
#   return is_palindrome_helper(s,0,s.length-1)
# end

# def is_palindrome_helper(s,first, last)
#   return true if (first > last)
#   return false if (first < last) && (s[first] != s[last])
#   return is_palindrome_helper(s, first + 1, last - 1)
# end

########################################################################################
# Write # 8 
# Time complexity: O(log n base 10) 
# Space complexity: O(log n base 10)
def digit_match(n, m)
  match = 0
  return 0 if ((n < 10) || (m < 10)) && (n%10 != m%10)
  return 1 if ((n < 10) || (m < 10)) && (n%10 == m%10)
  if n%10 == m%10
    match = 1
  else
    match = 0
  end
  return match + digit_match(n/10,m/10)
end

# Alternative way to solve write # 8 using the tail recursion
# Write # 8 using the tail recursion
# Time complexity: O(log n base 10)
# Space complexity: O(log n base 10)
# def digit_match(n, m, match = 0)
#   return match if ((n < 10) || (m < 10)) && (n%10 != m%10)
#   return match + 1 if ((n < 10) || (m < 10)) && (n%10 == m%10)
#   if n%10 == m%10 # n%10 gets the last digit of the number 9005. n%10 = 5
#     return digit_match(n/10, m/10, match +1 )
#   else 
#     return digit_match(n/10, m/10, match)
#   end
# end


# Alternative way to solve this problem but the time and space complexity are worse than the above. 
# This solution does  NOT % to get the last digit. It converts the numbers to string to get the last digit.
# Write # 8
# Time complexity: O(n)
# Space complexity: O(n^2)
# def digit_match(n, m)
#   n_string = n.to_s  
#   m_string = m.to_s
#   match = 0
#   return match if (n_string == "") || (m_string == "")
#   if n_string[-1] != m_string[-1]
#     match = 0
#   else
#     match = 1
#   end
#   return match + digit_match(n_string[0...-1], m_string[0...-1])
# end
############################################################################
# Added Fun : fibonacci number
# Added Tests for this!

# 0,1,1,2,3,5,8,13,21,34
#Time complexity: O(n)
# Space complexity: O(n)
def fib(n)
  raise ArgumentError.new ("n must be greater than or equal to 0") if n < 0
  return n if n < 2
  return fib(n - 1) + fib(n - 2)  
end

