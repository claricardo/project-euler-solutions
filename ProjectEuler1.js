/*

Project Euler - Problem 1 (from https://projecteuler.net/)
Multiples of 3 and 5


If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

*/


// Proposed solution
function multiples(limit) {
    var sum = 0;
    for(var i = 0; i < limit; i++){
        if(i % 3 === 0 || i % 5 === 0)
            sum += i;
    }
    return sum;
}

// Testing the solution
console.log(multiples(1000));

