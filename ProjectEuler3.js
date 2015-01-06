/*

Project Euler - Problem 3 (from https://projecteuler.net/)
Largest prime factor

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

*/


// Proposed solution
function primeFactors(number) {
    var factors = [];
    var limit = Math.floor(Math.sqrt(number));
    var product = 1;
    
    for(var i = 2; i < limit; i++){
        if(number % i === 0)
        {
            product *= i;
            if (product <= number)
                factors.push(i);
            else
                break;
        }
    }
    console.log(factors);
    return factors[factors.length-1];
}


// Testing the solution
console.log(primeFactors(600851475143));


