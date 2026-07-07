// Arrived at seat

if(state=="going")
{
    tx = global.counterSeats[seatIndex].x;
    ty = global.counterSeats[seatIndex].y;

    if(point_distance(x,y,tx,ty)==0)
    {
        path_end();

        state ="waiting";
		
		
    }
}


// Sitting and waiting

if(state=="waiting")
{
    waitTimer--;

    if(waitTimer <= 0)state = "leaving";
}
if(state == "leaving"){
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
}
if place_meeting(x, y,obj_delete_npc)instance_destroy(self);