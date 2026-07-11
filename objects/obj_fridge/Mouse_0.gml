if (room == rm_restaurant){
	global.fruit_fridge += global.fruit_hold;
	layer_text_text(layer_text_get_id("Fridge_interior","text_tomato"),"Tomatos " + string(global.fruit_fridge));
	global.fruit_hold = 0;
}
else if (room == rm_kitchen) layer_set_visible("Fridge_interior",true);