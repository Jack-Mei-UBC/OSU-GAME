///math_factorial(value);
var value = argument0;

if(value == 0) return 1; 

for(m = value-1; m > 1; m-=1){
    value*=m; 
}

return value; 