if(global.open == 1){
	spawn_timer++;

	if(spawn_timer >= spawn_delay && room == rm_restaurant)
	{
	    spawn_timer = 0;

	    instance_create_layer(
	        333,
	        302,
	        "Instances",
	        obj_npc_parent
	    );
	}
}