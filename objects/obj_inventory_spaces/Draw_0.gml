draw_self();
for(i = 0; i < 8; i++){
	if(inventory_spaces[i].occupied) draw_sprite(inventory_spaces[i].item_hold, inventory_spaces[i].name, inventory_spaces[i].name.x, inventory_spaces[i].name.y);
}