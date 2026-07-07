switch (button_id){
	case "fish":
		global.hold_item = "fish";
		room_goto(rm_restaurant);
		obj_player.visible = true;
		if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
		break;
	case "pasta":
		global.hold_item = "pasta";
		room_goto(rm_restaurant);
		obj_player.visible = true;
		if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
		break;
	case "salad":
		global.hold_item = "salad";
		room_goto(rm_restaurant);
		obj_player.visible = true;
		if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
		break;
	case "soup":
		global.hold_item = "soup";
		room_goto(rm_restaurant);
		obj_player.visible = true;
		if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
		break;
}


