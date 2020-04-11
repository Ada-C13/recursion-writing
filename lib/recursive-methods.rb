# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n = n
# Space complexity: O(n) where n = n because of the call stack
def factorial(n)
  # raise NotImplementedError, "Method not implemented"
  if n.zero?
    1
  elsif n.positive?
    n * factorial(n - 1)
  else
    raise ArgumentError.new, "Number cannot be negative"
  end
end

# Time complexity: O(n) where n = s.length
# Space complexity: O(n^2) because of the call stack and that each time we  are creating a new string
def reverse(s)
  # raise NotImplementedError, "Method not implemented"
  return s.slice(-1) + reverse(s.slice(0, (s.length - 1))) unless s.length.zero?
  return "" if s.length.zero?
end

# Time complexity: O(n) wher n is n/2
# Space complexity: O(n) wher n is n/2
def reverse_inplace(s, first_index = 0, last_index = (s.length - 1))
  # raise NotImplementedError, "Method not implemented"
  if first_index < last_index
    s[first_index], s[last_index] = s[last_index], s[first_index]
    reverse_inplace(s, first_index + 1, last_index - 1)
  end
  s
end

# Time complexity: O(n)
# Space complexity: O(n) because of the call stack
def bunny(n)
  # raise NotImplementedError, "Method not implemented"
  return 2 + bunny(n - 1) unless n.zero?
  return 0 if n.zero?
end

# Time complexity: ?
# Space complexity: ?
def nested(s, first_index = 0, last_index = (s.length - 1))
  # raise NotImplementedError, "Method not implemented"
  return false if s.length.odd?
  return true if s.empty?

  if first_index < last_index
    if s[first_index] == "(" && s[last_index] == ")"
        return nested(s, first_index + 1, last_index - 1)
    else 
        return false
    end
  end
  return true
end

# Time complexity: ?
# Space complexity: ?
def search(array, value, current_index = 0 )
    # raise NotImplementedError, "Method not implemented"
    if current_index < array.length
        if array[current_index] == value
            return true
        else 
            return search(array, value, current_index += 1) 
        end
    end
    return false
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s, first_index = 0, last_index = (s.length - 1))
  # raise NotImplementedError, "Method not implemented"
  if first_index < last_index
    if s[first_index] == s[last_index]
        return is_palindrome(s, first_index + 1, last_index - 1)
    else 
        return false
    end
  end
  return true
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end