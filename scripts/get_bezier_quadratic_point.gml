///get_bezier_quadratic_point(point1,point2,point3,vtick);
//Get a bezier quadratic point (either x or y). 

/*
    Usage: //put the following code in a loop and set the three x and y loops to draw a bcurve
        x = get_bezier_quadratic_point(point1,point2,point3,vtick);
        y = get_bezier_quadratic_point(point1,point2,point3,vtick);
        draw_point(x,y); 
        
    vtick is between 0 and 1. For higher precision, make the loop from 0 to 1/complexity. 
    
    This can be used to either draw a point, or make an object follow a bezier curve path.
    You could, for example, make a path in GM:S and then use it's points in this script,
    maybe to draw some nice trailing or something. Can also be used for dynamic pathing.
*/

var point1 = argument0; 
var point2 = argument1;
var point3 = argument2;
var vtick = argument3; 

return power(1-vtick,2) * point1 + 2*(1-vtick)*vtick*point2 + power(vtick,2) * point3;
