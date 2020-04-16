# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) because n number of multplications
# Space complexity: O(n) because n-1 in activation chain
def factorial(n)
    # recursion here
    if n == 0
        return 1
    elsif n == -1
        raise ArgumentError, "unable to calculate because of negative number"
    else
        return n * factorial(n-1)
end

#------------------------------------------------------------------------
# Time complexity: O(n) because n is = to number being passed
# Space complexity: O(n) because n is = to number being passed

def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s[0..-2])
    end
end

#------------------------------------------------------------------------
# Time complexity: O(n) because n is number of characters based on the string
# Space complexity: O(n) because n is number of characters based on the string
def reverse_inplace(s)
     #will need a helper method
  if s == ""
    return s
  end

  temp = s[0]
  s[0] = s[s.length - 1]
  s[s.length - 1] = temp

  if s.length > 1
    s[1..-2] = reverse_inplace(s[1..-2])
  end
  return s
end

#------------------------------------------------------------------------
# Time complexity: O(n) because n is the number of bunnies
# Space complexity: O(n) because n is the number of bunnies
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

#------------------------------------------------------------------------
# Time complexity: ?
# Space complexity: ?
def nested(s)
  if s == "" || s == "()"
    return true
  elsif s[0] == "(" && s[-1] == ")" && nested(s[1..-2])
    return true
  else
    return false
    end
end
#------------------------------------------------------------------------
# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

#------------------------------------------------------------------------
# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

#------------------------------------------------------------------------
# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end