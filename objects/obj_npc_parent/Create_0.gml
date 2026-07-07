// Random customer data

colors = ["Blue","Red","Green","Yellow"];
orders = ["soup","salad","pasta","fish"];

customer_color =
colors[irandom(array_length(colors)-1)];
switch (customer_color){
	case "Blue": 
	sprite_index = spr_npc_blue;
	break;
	case "Red":
	sprite_index = spr_npc_red;
	break;
	case "Green":
	sprite_index = spr_npc_green;
	break;
	case "Yellow":
	sprite_index = spr_npc_yellow;
	break;
}
customer_order =
orders[irandom(array_length(orders)-1)];

my_path = path_add();

state = "going";

waitTimer = 1000;

order = 1;

served = 0;
// Find free seat
seatIndex = -1;

for(i = 0; i < array_length(global.counterSeats); i++)
{
    if(!global.counterSeats[i].occupied)
    {
        seatIndex = i;

        global.counterSeats[i].occupied=true;
		
		break;
    }
}

// Generate path

tx = global.counterSeats[seatIndex].x;
ty = global.counterSeats[seatIndex].y;

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

