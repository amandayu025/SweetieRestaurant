if keyboard_check(ord("E")) {
	room_goto(rm_kitchen);
	obj_player.visible = false;
	if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = false;
}
