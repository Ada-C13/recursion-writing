# # # Authoring recursive algorithms. Add comments including time and space complexity for each method.

# # # Time complexity: O(n)
# # # Space complexity: O(n)

# # # def loop_factorial(n)
# # #   # raise NotImplementedError, "Method not implemented"
# # #   new_num = 1
# # #   while n != 1
# # #     puts new_num *= n
# # #     puts n = (n - 1)
# # #   end
# # #   return new_num
# # # end

# # # puts factorial(n)

def factorial(n)
  # raise NotImplementedError, "Method not implemented"
  #  solve the problem using a loop
  # build out slekton : base/recursive aka if/else
  # In base case return something
  # In rec make the call, store result in variable and when we make call
  # when you make the recursive call reduce problem by making n smaller - key is to get closer to your base case
  # take variable and do somework and return that
  # make the connection for each step of the process

  if n == 1
    return 1 # base: when n is 1
  else
    # recursive:
    recursion_result = factorial(n - 1)
    puts recursion_result
    puts n
    return recursion_result * n
  end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
# s = "shonda"
#iteration
#1 -> a
#2 -> d
#3 -> n
#4 -> o
#5 -> h
#stop - if statement to stop once it reached 1
# finds start and last [0..-2]

def reverse(s)
  # raise NotImplementedError, "Method not implemented"
  if s.length <= 1 # will stop once string is equal to 1 or less
    return s
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# puts reverse(s)

# Time complexity: O(n)
# Space complexity: O(n)

def reverse_inplace(s, first = 0, last = s.length - 1)
  # raise NotImplementedError, "Method not implemented"
  if first < last
    s[first], s[last] = s[last], s[first]
    reverse_inplace(s, first + 1, last - 1)
  end
  s
end

# Time complexity: O(n)
# Space complexity: O(n)

def bunny(n)
  # raise NotImplementedError, "Method not implemented"
  if n == 0
    return 0
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s, first = 0, last = s.length - 1)
  # raise NotImplementedError, "Method not implemented"
  if s == ""
    return true
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
array = [34, 45, 21, 4, 67]
value = 4

def search(array, value)
  # raise NotImplementedError, "Method not implemented"
  if array[0] == nil || array.empty?
    return false
  elsif array[0] == value
    return true
  else
    return search(array[1..-1], value)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  # raise NotImplementedError, "Method not implemented"
  if s.length < 2
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  # raise NotImplementedError, "Method not implemented"
  counter = 0
  if ((n < 10) || (m < 10)) && (n % 10 != m % 10)
    return 0
  end

  if ((n < 10) || (m < 10)) && (n % 10 != m % 10)
    return 1
  end
  if n % 10 == m % 10
    match = 1
  else
    match = 0
  end
  return match + digit_match(n / 10, m / 10)
end
