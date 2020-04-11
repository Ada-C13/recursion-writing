# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n in the number entered
# Space complexity: O(n)
def factorial(n)
	raise ArgumentError if n < 0
	return 1 if n == 0
	return n * factorial(n - 1)
end

# Time complexity: O(s) where s the string length
# Space complexity: O(s^2)
def reverse(s)
	return s if s.length <= 1
	return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(s) where s is the string length
# Space complexity: O(s)
def reverse_helper(s, first, last)
	return s if s.length <= 1
	if first < last
		s[first], s[last] = s[last], s[first]
		reverse_helper(s, first + 1, last - 1)
		return s
	end
end

def reverse_inplace(s)
	return reverse_helper(s, 0, s.length - 1)
end

# Time complexity: O(n) Where n is the number entered
# Space complexity: O(n)
def bunny(n)
	return 0 if n == 0
	return 2 if n == 1
	return bunny(n - 1) + 2
end

# Time complexity: O(s/2) but we drop constants so it would be O(s)
# Space complexity: O(s) same amount of space complexty as method calls 
def nested_helper(s, first, last)
	return false if s[first] == s[last]
	if s[first] != s[last] && first < s.length / 2
		return nested_helper(s, first + 1, last - 1)
	end
	return true
end

def nested(s)
	return true if s.length == 0
	return nested_helper(s, 0, -1)
end

# Time complexity: O(n) In worst case, where n is the length of array
# Time complexity: O(1) In best case
# Space complexity: O(n^2) Making a new array each time the method is called
def search(array, value)
	return false if array.length == 0
	if array[0] == value
		return true 
	else
		search(array[1..-1], value)
	end
end

# Time complexity: O(s/2) but we drop constants so it would be O(s)
# Space complexity: O(s) same amount of method calls as time complexity O(s/2)
def is_palindrome_helper(s, first, last)
	return false if s[first] != s[last]
	if first < s.length / 2
		return is_palindrome_helper(s, first + 1, last - 1)
	end
	return true
end

def is_palindrome(s)
	return is_palindrome_helper(s, 0, -1)
end

# Time complexity: O(x) where x is the length of the shortest number length
# Space complexity: O((m + n) + x) where m and n are two new strings and x is the number of times the method is called??
def digit_match_helper(n, m, count, i)
	if n[-i] == m[-i]
		count += 1
	end

	return count if n.length == i || m.length == i
	return digit_match_helper(n, m, count, i + 1)
end

def digit_match(n, m)
	n = n.to_s
	m = m.to_s
	return digit_match_helper(n, m, 0, 1)
end