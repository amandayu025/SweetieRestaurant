// Random customer data

colors = ["npc1","npc2","npc3","npc4"];
orders = ["soup","salad","pasta","fish"];

customer_color =
colors[irandom(array_length(colors)-1)];
switch (customer_color){
	case "npc1": 
	sprite[DOWN] = spr_npc1_down;
	sprite[LEFT] = spr_npc1_left;
	sprite[RIGHT] = spr_npc1_right;
	sprite[UP] = spr_npc1_up;
	break;
	case "npc2":
	sprite[DOWN] = spr_npc2_down;
	sprite[LEFT] = spr_npc2_left;
	sprite[RIGHT] = spr_npc2_right;
	sprite[UP] = spr_npc2_up;
	break;
	case "npc3":
	sprite[DOWN] = spr_npc3_down;
	sprite[LEFT] = spr_npc3_left;
	sprite[RIGHT] = spr_npc3_right;
	sprite[UP] = spr_npc3_up;
	break;
	case "npc4":
	sprite[DOWN] = spr_npc4_down;
	sprite[LEFT] = spr_npc4_left;
	sprite[RIGHT] = spr_npc4_right;
	sprite[UP] = spr_npc4_up;
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

