///math_bernstain(k,n,t); (n) E (k) of (t)
var k = argument0;
var n = argument1;
var t = argument2; 

var firstFact = math_factorial(n); 
var secondFact = math_factorial(k);
var thirdFact = math_factorial(n-k); 
var firstPow = power(t, k); 
var secondPow = power(1-t, n-k); 

return (firstFact / (secondFact * thirdFact)) * firstPow * secondPow;