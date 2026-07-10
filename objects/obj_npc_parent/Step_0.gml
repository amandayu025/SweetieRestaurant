mask_index = sprite[DOWN];
if (state == "going" || state == "leaving") {
	if(path_index != -1){
		if (direction >= 315 || direction < 45) face = RIGHT;
		else if (direction >= 45 && direction < 135) face = UP;
		else if (direction >= 135 && direction < 225) face = LEFT;
		else face = DOWN;
	}
	sprite_index = sprite[face];
}
else if (state == "waiting") mask_index = sprite[UP];
if (speed == 0) image_index = 0;
depth = -bbox_bottom;
// Arrived at seat
if(seatIndex >=0){
	if(state=="going")
	{
	tx = global.counterSeats[seatIndex].x;
	ty = global.counterSeats[seatIndex].y;

	if(point_distance(x,y,tx,ty)==0)
	{
	    path_end();

	    state ="waiting";
		
		sprite_index = sprite[UP];
	}
}


	// Sitting and waiting

	if(state=="waiting")
	{
		waitTimer--;

		if(waitTimer <= 0 || served == 1) {
			state = "leaving";
			
			path_delete(my_path);

			my_path=path_add();
		
			order = 0;

			// Exit position

			if(mp_grid_path(
			    global.grid,
			    my_path,
			    x,
			    y,
			    333,
			    318,
			    true))
			{
			    path_start(
			        my_path,
			        2,
			        path_action_stop,
			        false
			    );
			}
			global.counterSeats[seatIndex].occupied=false;
			if (waitTimer <= 0) {
				mood = "angry"; 
				served = 1;
			}
		}
	}
	if place_meeting(x, y,obj_delete_npc)instance_destroy(self);
}