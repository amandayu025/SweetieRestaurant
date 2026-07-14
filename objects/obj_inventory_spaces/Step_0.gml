if(global.carrot_hold > 0 && !array_contains(items,"carrot")){
	array_push(items,"carrot");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_carrot;
	carrot = last;
	last++;
}
if(global.cucumber_hold > 0 && !array_contains(items,"cucumber")){
	array_push(items,"cucumber");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_cucumber;
	cucumber = last;
	last++;
}
if(global.lettuce_hold > 0 && !array_contains(items,"lettuce")){
	array_push(items,"lettuce");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_lettuce;
	lettuce = last;
	last++;
}
if(global.potato_hold > 0 && !array_contains(items,"potato")){
	array_push(items,"potato");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_potato;
	potato = last;
	last++;
}
if(global.tomato_hold > 0 && !array_contains(items,"tomato")){
	array_push(items,"tomato");
	inventory_spaces[last].occupied = true;
	inventory_spaces[last].item_hold = spr_tomato;
	tomato = last;
	last++;
}
