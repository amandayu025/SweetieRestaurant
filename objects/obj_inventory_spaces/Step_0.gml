if(global.carrot_hold > 0 && !array_contains(items,"carrot")){
	array_push(items,"carrot");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_carrot;
	carrot = last;
	last++;
	global.inventory = 1;
}
if(global.cucumber_hold > 0 && !array_contains(items,"cucumber")){
	array_push(items,"cucumber");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_cucumber;
	cucumber = last;
	last++;
	global.inventory = 1;
}
if(global.lettuce_hold > 0 && !array_contains(items,"lettuce")){
	array_push(items,"lettuce");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_lettuce;
	lettuce = last;
	last++;
	global.inventory = 1;
}
if(global.potato_hold > 0 && !array_contains(items,"potato")){
	array_push(items,"potato");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_potato;
	potato = last;
	last++;
	global.inventory = 1;
}
if(global.tomato_hold > 0 && !array_contains(items,"tomato")){
	array_push(items,"tomato");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_tomato;
	tomato = last;
	last++;
	global.inventory = 1;
}
if(global.egg_hold > 0 && !array_contains(items,"egg")){
	array_push(items,"egg");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_egg;
	egg = last;
	last++;
	global.inventory = 1;
}
if(global.fish_hold > 0 && !array_contains(items,"fish")){
	array_push(items,"fish");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_fish;
	fish = last;
	last++;
	global.inventory = 1;
}
if(global.flour_hold > 0 && !array_contains(items,"flour")){
	array_push(items,"flour");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_flour;
	flour = last;
	last++;
	global.inventory = 1;
}




if(global.inventory == 0){
	inventory_spaces = [
		{name: inventory_sp1, occupied: false, item_hold: spr_empty},
		{name: inventory_sp2, occupied: false, item_hold: spr_empty},
		{name: inventory_sp3, occupied: false, item_hold: spr_empty},
		{name: inventory_sp4, occupied: false, item_hold: spr_empty},
		{name: inventory_sp5, occupied: false, item_hold: spr_empty},
		{name: inventory_sp6, occupied: false, item_hold: spr_empty},
		{name: inventory_sp7, occupied: false, item_hold: spr_empty},
		{name: inventory_sp8, occupied: false, item_hold: spr_empty}
	]; 
	items = [];
	last = 0;
	carrot = -1;
	cucumber = -1;
	lettuce = -1;
	potato = -1;
	tomato = -1;
	egg = -1;
	fish = -1;
	flour = -1;
}