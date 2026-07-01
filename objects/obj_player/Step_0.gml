key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

xspd = (key_right - key_left) * walk_spd;
yspd = (key_down - key_up) * walk_spd;

//collisions
if place_meeting(x + xspd, y, obj_wall) xspd = 0;
if place_meeting(x, y + yspd, obj_wall) yspd = 0;

mask_index = DOWN;
if yspd == 0{
	if xspd > 0 {face = RIGHT}
	else if xspd < 0{face = LEFT}
}
if xspd == 0{
	if yspd > 0 {face = DOWN}
	else if yspd < 0{face = UP}
}

if yspd == 0 && xspd == 0 {image_index = 0}
sprite_index = sprite[face];

x += xspd;
y += yspd;

depth = - bbox_top;