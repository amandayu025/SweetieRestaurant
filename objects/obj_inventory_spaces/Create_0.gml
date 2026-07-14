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
last = 0;
items = array_create(8);
carrot = -1;
cucumber = -1;
lettuce = -1;
potato = -1;
tomato = -1;
egg = -1;
fish = -1;
flour = -1;

global.inventory = 0;