# # Authoring recursive algorithms. Add comments including time and space complexity for each method.

# # Time complexity: ?
# # Space complexity: ?
# n = 4

# # def loop_factorial(n)
# #   # raise NotImplementedError, "Method not implemented"
# #   new_num = 1
# #   while n != 1
# #     puts new_num *= n
# #     puts n = (n - 1)
# #   end
# #   return new_num
# # end

# # puts factorial(n)

# def factorial(n)
#   # raise NotImplementedError, "Method not implemented"
#   #  solve the problem using a loop
#   # build out slekton : base/recursive aka if/else
#   # In base case return something
#   # In rec make the call, store result in variable and when we make call
#   # when you make the recursive call reduce problem by making n smaller - key is to get closer to your base case
#   # take variable and do somework and return that
#   # make the connection for each step of the process

#   if n == 1
#     return 1 # base: when n is 1
#   else
#     # recursive:
#     recursion_result = factorial(n - 1)
#     return recursion_result * n
#   end
# end

# puts factorial(n)

# Time complexity: ?
# Space complexity: ?
s = "shonda"
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

puts reverse(s)

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
