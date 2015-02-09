#	Project Euler - Problem 1 (from https://projecteuler.net/)
#	Multiples of 3 and 5

#	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
#	The sum of these multiples is 23.

#	Find the sum of all the multiples of 3 or 5 below 1000.


# 	Proposed solution
def multiples limit
	(1..limit-1).inject(0) {|sum, num| (num % 3 == 0 || num % 5 == 0) ? sum + num : sum}
	
	#	Other possible answers:
	# (1..limit-1).to_a.keep_if{|d| d%3 == 0 || d%5 == 0}.reduce(:+)
	# 1.upto(limit-1).inject(0) { |sum, num| sum += num if (num % 3 == 0 || i % 5 == 0); sum }
end

#	Testing the solution
puts "The sum of all multiples of 3 or 5 is: #{multiples 1000}"

