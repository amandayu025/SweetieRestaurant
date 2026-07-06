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
	{x: 173, y:259, occupied: false},
	{x: 207, y:259, occupied: false},
	{x: 240, y:259, occupied: false},
	{x: 271, y:259, occupied: false},
	{x: 304, y:259, occupied: false},
	{x: 335, y:259, occupied: false},
	{x: 367, y:259, occupied: false},
	{x: 399, y:259, occupied: false},
];

// Spawn settings
spawn_timer = 0;
spawn_delay = 300;

global.costumers = -1;
global.max_costumers = 4;
