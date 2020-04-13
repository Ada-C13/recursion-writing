# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Factorial

# Time complexity: O(n)
# Space complexity: O(n)


# factorial(n) Write a method factorial that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).

# e.g. fact(4) = 4 * 3 * 2 * 1 = 24

def factorial(n)
    if n < 0
        raise ArgumentError, "Please use a positive number"
    elsif n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

# Reverse

# Write a method `reverse` that accepts a string as a parameter and then returns the reverse of the string by reversing all letters and all words in the string.
# - e.g. reverse("hello world") will return "dlrow olleh"

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    return s if s.length <= 1

    reversed_s = reverse(s[1..-1])
    reversed_s += s[0]
    return reversed_s
end

# Reverse in place

# Write a method `reverse_inplace` that accepts a string as a parameter and then reverses the string in place using a recursive algorithm.
# - e.g. reverse("hello world") will convert the input string to "dlrow olleh"

# Answer from example in class

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    return reverse_help(s, 0, s.length - 1)
end

def reverse_help(s, first = 0, last = s.length - 1)
    if first < last
        s[first], s[last] = s[last], s[first]
        return reverse_help(s, first +1, last - 1)
    end

    return s
end

# Bunny ears

# Write a method `bunny` that accepts an integer parameter n. N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
# - e.g. bunny(0) = 0
# - e.g. bunny(1) = 2
# - e.g. bunny(10) = 20

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n-1)
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