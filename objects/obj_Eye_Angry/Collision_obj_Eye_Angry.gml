/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Moves instance away from another enemy (Provides Object Overlap Protection)
var dir;
var move_dis = 0.5;  // pixels to move away from other object in collision 32

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    dir = random(360);

// Move in opposite direction of object in collision
else
    dir = point_direction(other.x,other.y,x,y);

// Move to new location but away from wall and char

var dx = lengthdir_x(move_dis,dir);
var dy = lengthdir_y(move_dis,dir);

if (!place_meeting(x+dx,y,obj_Solid)) x += dx;
if (!place_meeting(x,y+dy,obj_Solid)) y += dy;
if (!place_meeting(x+dx,y,obj_toodl_tid)) x +=dx;
if (!place_meeting(x,y+dy,obj_toodl_tid)) y += dy;