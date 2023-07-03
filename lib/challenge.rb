# Largest palindrome product

# A palindrome is a sequence of characters that reads the same both forwards and backwards. Numbers can also be palindromes. 
# The largest palindrome made from the product of two 2-digit numbers is 9009, by multiplying 91 x 99. 

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
   if num.to_s == num.to_s.reverse
    return true
   else
    return false
   end
end
def largest_palindrome_product
  palindromes = []
  (100..999).each do |x|
    (100..999).each do |y|
      if palindrome?(x*y)
        palindromes << x*y
      end
    end
  end
  return palindromes.max
end

