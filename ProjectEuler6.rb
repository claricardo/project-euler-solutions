#	Project Euler - Problem 6 (from https://projecteuler.net/)
#	Sum square difference

#	The sum of the squares of the first ten natural numbers is,

#	12 + 22 + ... + 102 = 385
#	The square of the sum of the first ten natural numbers is,

#	(1 + 2 + ... + 10)2 = 552 = 3025
#	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


#	Proposed solution
def diffSumSquares n
	sum1 = (1..n).reduce(0) {|sum, x| sum + (x*x) }
	sum2 = (1..n).reduce(:+)
	
	return (sum2*sum2) - sum1;
end 


#	Testing the solution
puts "The difference is: #{diffSumSquares 100}"