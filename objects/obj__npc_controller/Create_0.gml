// Create movement grid
global.grid = mp_grid_create(
    0,
    0,
    room_width/32,
    room_height/32,
    32,
    32
);

// Add walls if you have obstacles
mp_grid_add_instances(global.grid,obj_wall,false);

// Counter seats
global.counterSeats = [
	{x: 200, y:265, occupied: false},
	{x: 240, y:265, occupied: false},
	{x: 280, y:265, occupied: false},
	{x: 320, y:265, occupied: false},
	{x: 360, y:265, occupied: false},
	{x: 400, y:265, occupied: false}
];

// Spawn settings
spawn_timer = 0;
spawn_delay = 300;

global.costumers = -1;
global.max_costumers = 4;
