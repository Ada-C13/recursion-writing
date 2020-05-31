# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
	return 1 if n == 0
	raise ArgumentError, "Sorry! I can't calculate negative numbers!" if n < 0
	return (n * factorial(n - 1))
end

# Time complexity: O(n)
# Space complexity: O(n2)
def reverse(s)
	return s if s.length <= 1
	
	short_s = s[1..(s.length - 1)]
	return reverse(s[short_s]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
	return reverse_helper(s, 0, (s.length - 1))
end

def reverse_helper(s, i, j)
	if i < j
			s[i], s[j] = s[j], s[i]
			return reverse_helper(s, (i + 1), (j - 1))
	end
	return s
end

# Time complexity: O(n2)
# Space complexity: O(n)
def bunny(n)
	return 0 if n == 0

	return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s)
	left = 0
	right = 0
	s.each_char do |l|
			left += 1 if l == "("
			right += 1 if l == ")"
	end
	return true if left == right
	return false
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
#accepts unsorted array of ints, return true if value is in it.
	i = 0
	if i < array.length
		return true if array[i] == value
		i += 1
		return search(array[i..-1], value)
	end
	#base case
	return false
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