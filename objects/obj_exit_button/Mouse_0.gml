room_goto(rm_target);
obj_player.visible = true;
if(instance_exists(obj_npc_parent)) obj_npc_parent.visible = true;
if(room == rm_kitchen) layer_set_visible("Fridge_interior",false);