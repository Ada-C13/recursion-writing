# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: 0(n) b/c it's being called recursively n times before reaching the base case. (linear)
# Space complexity: 0(n) There are no new variables but there is the Stack! 
def factorial(n)
	# 3! = 3 * 2 * 1 = 6
	# 1. If...a recursive case (method calls itself)
	# and a base case (method ends - does not call itself)
	# 2 Handle simplest case first - base case( no looping)
	# 3. Write recursive call (one step simpler each time (n-1)
	# 4. Assume the call works. 
	# ask myself...what does it do? 
	# ask myself...how does it help? 
	if !(n >= 0)
		raise ArgumentError.new("The input must be greater than or equal to 0")
	end
	# base case
		if n <= 1
			return 1
		else
			# recursive case
			return n * factorial(n-1)
    end
end


# Time complexity: 0(n^2) It will always go the length of the string plus a new variable. 
# Space complexity: 0(n)
def reverse(s)
	# base case
		return s if s.length <= 1
		# recursive case - with range argument found here:  https://ruby-doc.org/core-2.5.0/Range.html
		reversed_str = reverse(s[1..-1])
		# "t", "ta", "tac"
		# new string that contains the first reversed character
		reversed_str << s[0]
		reversed_str
	
end

# Time complexity: O(n) - n being the length
# Space complexity: 0(n) - No temporary variables so 0(1),  but there is the Stack so 0(n)??
def reverse_inplace(s)
	# https://stackoverflow.com/questions/20406003/reverse-a-string-with-ruby-with-recursion-whats-wrong-with-this
	#  if string length is less than 2, return string										
	# passes all but first/last characters to itself - see range, then reverses first/last character and + (joins) them
		s.length < 2 ? s : s[-1] + reverse_inplace(s[1..-2]) + s[0]
end

# Time complexity: 0(n)
# Space complexity: 0(n)
# I don't understand how this is working...
# It took me some time to figure out how to make it recursive. I played with it in Repl, but 
# I still cannot figure out what it's doing...how does it get 100 when the input is 50? 
def bunny(n)
	# base case
	return 0 if n < 1
		if n >= 1
		# return	n + n (not recursive)
			return 2 + bunny(n - 1) # this is recursive
		end
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def nested(s)
	return true if s.length == 0;
	return false if s.length == 1;
	
	if s[0] == "(" && s[-1] == ")"
		return nested(s[1..-2])
	else
			return false
	end
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def search(array, value)
	return false if array.length == 0;
		
	if array[-1] == value
		return true
	else 
		return search(array[0..-2], value)
	end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
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
# 	def digit_match(n, m)
# 		match = 0
# 		return 0 if ((n < 10) || (m < 10)) && (n % 10 != m % 10)
# 		return 1 if ((n < 10) || (m < 10)) && (n % 10 == m % 10)
# 		if n % 10 == m % 10
# 			match = 1
# 		else
# 			match = 0
# 		end
# 		return match + digit_match(n/10, m/10)
	
# end