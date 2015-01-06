/*

Project Euler - Problem 4 (from https://projecteuler.net/)
Largest palindrome product

A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

*/


// Proposed solution
function isPalindrome(number){
    var reverse = 0,
        n = number,
        dig;
        
        if (number < 0) return false;
        while(n > 0){
            dig = n % 10;
            reverse = reverse * 10 + dig;
            n = Math.floor(n / 10);
        }
        
        return reverse == number;
}

function getLargestPalindrome(nDigits) {
    var max = -1,
        limit = Math.pow(10, nDigits),
        number = 0,
        a, b;
    
        for(var i = 1; i < limit; i++) {
            for(var j = i + 1; j < limit; j++) {
                number = i * j;  
                if(isPalindrome(number) && number > max){
                    max = number;
					a = i;
					b = j;
				}
            }
        }
		console.log(a, b);
        return max;
}

// Testing the solution
console.log(getLargestPalindrome(3));