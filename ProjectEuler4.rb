#	Project Euler - Problem 4 (from https://projecteuler.net/)
#	Largest palindrome product

#	A palindromic number reads the same both ways. 
#	The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#	Find the largest palindrome made from the product of two 3-digit numbers.

#	Proposed solution
def isPalindrome number
	return number.to_s.reverse == number.to_s;
end

def getLargestPalindrome nDigits
    limit = 10 ** nDigits
	palindromes = []
	
	(1..limit).inject(palindromes) do |pal, elem|
		(elem.next..limit).inject(elem) do |elem1, elem2|
			pal << (elem1 * elem2) if isPalindrome (elem1 * elem2)
			elem1
		end
		pal
	end
	
	palindromes.max
end

#	Testing the solution
puts "The largest palindromic product is: #{getLargestPalindrome 3}"
