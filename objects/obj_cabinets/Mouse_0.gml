if(room == rm_restaurant){
	room_goto(rm_kitchen);
	obj_player.visible = false;
	if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = false;
}
else if(room == rm_kitchen) layer_set_visible("UI_layer",true);