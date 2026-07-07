switch (button_id){
	case 0:
	global.hold_item = "fish";
	break;
	case 1:
	global.hold_item = "pasta";
	break;
	case 2:
	global.hold_item = "salad";
	break;
	case 3:
	global.hold_item = "soup";
	break;
}

room_goto(rm_restaurant);
obj_player.visible = true;
if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
