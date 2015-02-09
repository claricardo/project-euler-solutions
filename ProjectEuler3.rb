#	Project Euler - Problem 3 (from https://projecteuler.net/)
#	Largest prime factor

#	The prime factors of 13195 are 5, 7, 13 and 29.

#	What is the largest prime factor of the number 600851475143 ?

#	Proposed solution

def primeFactors number
    factors = []
    limit = Math.sqrt(number).floor
    product = 1;
    (2..limit).inject(factors) do |fact, elem|
		if number % elem == 0
			product *= elem 
			break if product > number
			fact << elem
		end
		fact
	end
	
	factors	
end 


#	Testing the solution
puts "The largest prime factor is: #{primeFactors(600851475143).max}"


