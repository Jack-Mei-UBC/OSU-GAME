///draw_bezier_cubic(x1,y1,x2,y2,x3,y3,x4,y4,complexity,width);
//This draws a bezier with two control points (x2,y2,x3,y3)

var point1_x = argument0;
var point1_y = argument1; 
var point2_x = argument2;
var point2_y = argument3;
var point3_x = argument4;
var point3_y = argument5;
var point4_x = argument6;
var point4_y = argument7;
var complexity = argument8;
var width = argument9; 

var lastpoint_x = point1_x;
var lastpoint_y = point1_y;
for(i = 0; i <= 1; i+= 1/complexity){
    var point_x = power(1-i,3)*point1_x + 3*power(1-i,2)*i*point2_x+3*(1-i)*power(i,2)*point3_x+power(i,3)*point4_x;
    var point_y = power(1-i,3)*point1_y + 3*power(1-i,2)*i*point2_y+3*(1-i)*power(i,2)*point3_y+power(i,3)*point4_y;
    draw_line_width(lastpoint_x,lastpoint_y,point_x,point_y,width);
    lastpoint_x = point_x;
    lastpoint_y = point_y; 
}