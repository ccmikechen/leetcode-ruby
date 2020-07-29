# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  x == reverse_int(x)
end

def reverse_int(x, result = 0)
  return result if x == 0

  reverse_int(x / 10, result * 10 + x % 10)
end
