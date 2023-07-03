# Largest palindrome product

# A palindrome is a sequence of characters that reads the same both forwards and backwards. Numbers can also be palindromes. 
# The largest palindrome made from the product of two 2-digit numbers is 9009, by multiplying 91 x 99. 

# Find the largest palindrome made from the product of two 3-digit numbers.
# require 'rspec'
require './lib/challenge'
RSpec.describe 'Largest palindrome product' do
  describe 'palindrome?' do
    it 'returns true if the number is a palindrome' do
      expect(palindrome?(9009)).to be true
      expect(palindrome?(12321)).to be true
    end

    it 'returns false if the number is not a palindrome' do
      expect(palindrome?(1234)).to be false
      expect(palindrome?(123432)).to be false
    end

    it 'finds largest palidrome from product of two 3-digit numbers' do
      expect(largest_palindrome_product).to eq(906609)
    end
  end
end