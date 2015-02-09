#	Project Euler - Problem 5 (from https://projecteuler.net/)
#	Smallest multiple

#	2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#	What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#	Proposed solution
def smallestMultiple a, b, start = 1
    
    # use start = 2520 for finding the solution in range [1,20]
	start.step((Float::MAX).to_i) do |n| 
		flag = (a..b).inject(true) do |flag, elem|
			flag &= (n % elem == 0)
			break if !flag
			flag
		end	
		return n if flag
	end
	return -1
end


#	Testing the solution

# 	Suppose the starting point near to the factorial of the mid-point in the [a,b] range
a = 1
b = 20
start = ((a + b).fdiv(2) + 0.5).ceil.downto(1).reduce(:*) 

puts "The smallest positive number is: #{smallestMultiple(a, b, start)}"