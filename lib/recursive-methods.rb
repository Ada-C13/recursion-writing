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


# Time complexity: 0(n) It will always go the length of the string plus a new variable. 
# Space complexity: ?
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