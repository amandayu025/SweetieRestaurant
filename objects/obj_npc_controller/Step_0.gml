spawn_timer++;

if(spawn_timer >= spawn_delay)
{
    spawn_timer = 0;

    instance_create_layer(
        331,
        312,
        "Instances_Restaurant",
        obj_npc
    );
}