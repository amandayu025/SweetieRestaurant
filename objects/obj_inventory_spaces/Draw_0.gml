draw_self();
for(i = 0; i < 8; i++){
	if(inventory_spaces[i].occupied) draw_sprite(inventory_spaces[i].item_hold, inventory_spaces[i].name, inventory_spaces[i].name.x, inventory_spaces[i].name.y);
}

if(carrot > -1){
	layer_text_text(layer_text_get_id("UILayer_Inventory","text_sp" + string(carrot + 1)),string(global.carrot_hold));
}
if(cucumber > -1){
	layer_text_text(layer_text_get_id("UILayer_Inventory","text_sp" + string(cucumber + 1)),string(global.cucumber_hold));
}
if(lettuce > -1){
	layer_text_text(layer_text_get_id("UILayer_Inventory","text_sp" + string(lettuce + 1)),string(global.lettuce_hold));
}
if(potato > -1){
	layer_text_text(layer_text_get_id("UILayer_Inventory","text_sp" + string(potato + 1)),string(global.potato_hold));
}
if(tomato > -1){
	layer_text_text(layer_text_get_id("UILayer_Inventory","text_sp" + string(tomato + 1)),string(global.tomato_hold));
}