/*

Project Euler - Problem 6 (from https://projecteuler.net/)
Sum square difference

The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

*/

// Proposed solution
function diffSumSquares(n){
	var sum1 = 0,
		sum2 = 0;
	
    for(var i = 1; i <= n; i++){
		sum1 += i*i;
		sum2 += i;
    } 
    sum2 *= sum2;
	
	console.log(sum1, sum2);
	return sum2 - sum1;
}


// Testing the solution
console.log(diffSumSquares(100));