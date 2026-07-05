// Random customer data

names = ["John","Emma","Mike","Sarah","Lucas"];
orders = ["Coffee","Latte","Tea","Espresso"];

customer_name =
names[irandom(array_length(names)-1)];

customer_order =
orders[irandom(array_length(orders)-1)];

seatIndex = -1;

my_path = path_add();

state = "going";

waitTimer = room_speed*5;


// Find free seat

for(var i=0;i<array_length(global.counterSeats);i++)
{
    if(!global.counterSeats[i].occupied)
    {
        seatIndex = i;

        global.counterSeats[i].occupied=true;

        break;
    }
}

// No seats available
if(seatIndex==-1)
{
    instance_destroy();
}


// Generate path

var tx=global.counterSeats[seatIndex].x;
var ty=global.counterSeats[seatIndex].y;

if(mp_grid_path(
    global.grid,
    my_path,
    x,
    y,
    tx,
    ty,
    true))
{
    path_start(
        my_path,
        2,
        path_action_stop,
        false
    );
}

