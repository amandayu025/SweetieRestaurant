// Arrived at seat

if(state=="going")
{
    var tx=global.counterSeats[seatIndex].x;
    var ty=global.counterSeats[seatIndex].y;

    if(point_distance(x,y,tx,ty)<10)
    {
        path_end();

        state="waiting";
    }
}


// Sitting and waiting

if(state=="waiting")
{
    waitTimer--;

    if(waitTimer<=0)
    {
        state="leaving";

        path_delete(my_path);

        my_path=path_add();

        // Exit position

        if(mp_grid_path(
            global.grid,
            my_path,
            x,
            y,
            room_width+100,
            y,
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
}


// Remove outside room

if(x>room_width+50)
{
    instance_destroy();
}