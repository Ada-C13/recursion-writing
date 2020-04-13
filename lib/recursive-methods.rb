# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), it will run the number of n times
# Space complexity: O(n), it will call the function the number of n times
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n <= 1
    return n * factorial(n-1)
end

# Time complexity: O(n), where n is the length of s
# Space complexity: O(n^2), where n is the length of s. Will call the function and create a new string n number of times, so n^2
def reverse(s)
    return s if s.length <= 1
    return s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n) - n is length of s divided by 2 since it stops once last_index and first_index meet in the middle
# Space complexity: O(n) - same as time complexity, but does not create a new string each time so doesn't become O(n^2)
def reverse_inplace(s)
    return s if s.length <= 1
    return reverse_helper(s.length - 1, 0, s[0], s)
end

def reverse_helper(last_index, first_index, first_character, s)
    if first_index < last_index
      s[first_index] = s[last_index]
      s[last_index] = first_character
      return reverse_helper(last_index - 1, first_index + 1, s[first_index + 1], s)
    end
    return s
  end

# Time complexity: O(n), it will run the number of n times
# Space complexity: O(n), it will call the function the number of n times
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n) where s is s.length/2 number of times
# Space complexity: O(n^2) - will create a new string and add to the call stack s.length/2 number of times
def nested(s)
    return true if s == ''
    return (s[0] == '(' && s[-1] == ')') ? nested(s[1..-2]) : false
end

# Time complexity: O(n), where n is array.length because it will run up to length of array times
# Space complexity: O(n^2) because it makes a new array each time as well as storing the function call
def search(array, value)
    return false if array.length == 0
    return true if array[0] == value  
    return search(array[1..-1], value)
end

# Time complexity: O(n) - will run s.length/2 number of times
# Space complexity: O(n^2) - will create a new string and add to the call stack s.length/2 number of times
def is_palindrome(s)
    return true if s == ''
    return (s[0] == s[-1]) ? is_palindrome(s[1..-2]) : false
end

# Time complexity: O(n), where n is the number of digits in the bigger number
# Space complexity: O(n)
def digit_match(n, m)
    if (n%10 == n) || (m%10 == m)
        return (n%10 == m%10) ? 1 : 0
    end
    
    if ((n % 10) == (m % 10)) || (n == m)
        return 1 + digit_match(n/10, m/10)
    else
        return digit_match(n/10, m/10)
    end
end