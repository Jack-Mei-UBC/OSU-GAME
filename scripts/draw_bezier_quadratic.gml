///draw_bezier_quadratic(x1,y1,x2,y2,x3,y3,complexity,width);
//This draws a bezier with a single control point (x2,y2)

var point1_x = argument0;
var point1_y = argument1; 
var point2_x = argument2;
var point2_y = argument3;
var point3_x = argument4;
var point3_y = argument5;
var complexity = argument6;
var width = argument7; 

var lastpoint_x = point1_x;
var lastpoint_y = point1_y;
for(i = 0; i <= 1; i+= 1/complexity){
    var point_x = power(1-i,2) * point1_x + 2*(1-i)*i*point2_x + power(i,2) * point3_x;
    var point_y = power(1-i,2) * point1_y + 2*(1-i)*i*point2_y + power(i,2) * point3_y;
    draw_line_width(lastpoint_x,lastpoint_y,point_x,point_y,width);
    lastpoint_x = point_x;
    lastpoint_y = point_y; 
}
