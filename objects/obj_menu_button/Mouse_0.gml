switch (button_id){
	case "fish":
		if(global.fish_fridge > 0){
			global.hold_item = "fish";
			room_goto(rm_restaurant);
			obj_player.visible = true;
			if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
			global.fish_fridge--;
		}
		break;
	case "pasta":
		if(global.tomato_fridge > 0 && global.egg_fridge > 0 && global.flour_fridge > 0){
			global.hold_item = "pasta";
			room_goto(rm_restaurant);
			obj_player.visible = true;
			if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
			global.tomato_fridge--;
			global.egg_fridge--;
			global.flour_fridge--;
		}
		break;
	case "salad":
		if(global.cucumber_fridge > 0 && global.lettuce_fridge > 0 && global.tomato_fridge > 0){
			global.hold_item = "salad";
			room_goto(rm_restaurant);
			obj_player.visible = true;
			if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
			global.cucumber_fridge--;
			global.lettuce_fridge--;
			global.tomato_fridge--;
		}
		break;
	case "soup":
		if(global.carrot_fridge > 0 && global.potato_fridge > 0){
			global.hold_item = "soup";
			room_goto(rm_restaurant);
			obj_player.visible = true;
			if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
			global.carrot_fridge--;
			global.potato_fridge--;
		}
		break;
}

layer_text_text(layer_text_get_id("Fridge_interior","text_carrot"),string(global.carrot_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_cucumber"),string(global.cucumber_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_lettuce"),string(global.lettuce_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_potato"),string(global.potato_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_tomato"),string(global.tomato_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_egg"),string(global.egg_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_fish"),string(global.fish_fridge));
layer_text_text(layer_text_get_id("Fridge_interior","text_flour"),string(global.flour_fridge));
