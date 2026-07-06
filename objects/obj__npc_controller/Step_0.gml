spawn_timer++;

if(spawn_timer >= spawn_delay)
{
    spawn_timer = 0;

    instance_create_layer(
        333,
        302,
        "Instances",
        obj_npc_parent
    );
}