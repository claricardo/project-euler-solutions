/*

Project Euler - Problem 5 (from https://projecteuler.net/)
Smallest multiple

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

*/

// Proposed solution
function smallestMultiple(a, b){
    
    var flag,
        n = 2520; // use n = 2520 for finding the solution in range [1,20]
    
    do {
        flag = true;
        for(var i = a; i <= b; i++){
            flag &= (n % i === 0);
            console.log(n, i, flag);
            if(!flag) break;
        }
        if(flag) 
            return n;
        n++;
    } while (!flag);
    
    return -1;
}


// Testing the solution
console.log(smallestMultiple(1,20));