if (room == rm_restaurant){
	global.carrot_fridge += global.carrot_hold;
	global.cucumber_fridge += global.cucumber_hold;
	global.lettuce_fridge += global.lettuce_hold;
	global.potato_fridge += global.potato_hold;
	global.tomato_fridge += global.tomato_hold;
	global.egg_fridge += global.egg_hold;
	global.fish_fridge += global.fish_hold;
	global.flour_fridge += global.flour_hold;
	
	layer_text_text(layer_text_get_id("Fridge_interior","text_carrot"),string(global.carrot_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_cucumber"),string(global.cucumber_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_lettuce"),string(global.lettuce_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_potato"),string(global.potato_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_tomato"),string(global.tomato_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_egg"),string(global.egg_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_fish"),string(global.fish_fridge));
	layer_text_text(layer_text_get_id("Fridge_interior","text_flour"),string(global.flour_fridge));
	
	global.carrot_hold = 0;
	global.cucumber_hold = 0;
	global.lettuce_hold = 0;
	global.potato_hold = 0;
	global.tomato_hold = 0;
	global.egg_hold = 0;
	global.fish_hold = 0;
	global.flour_hold = 0;
	
	global.inventory = 0;
	
	layer_set_visible("Fridge_interior",true);
}
