/// @description блинкающийся противник

if canSpawn = 1
{
	new_x = irandom_range(-1 * coord_1, coord_1);
	new_y = irandom_range(-1 * coord_1, coord_1);

	//if place_free(obj_hero.x + new_x, obj_hero.y + new_y)
	if !collision_rectangle(
	obj_hero.x + new_x - 15, 
	(obj_hero.y - 15) + new_y - 15, 
	obj_hero.x + new_x + 15, 
	(obj_hero.y - 15) + new_y + 15, 
	all, false, true)
	{
		enemySpawnNow = choose(obj_enemyJumper);
		instance_create_layer(obj_hero.x + new_x, obj_hero.y + new_y, "hud", obj_coinsTakeEffect);
		instance_create_layer(obj_hero.x + new_x, obj_hero.y + new_y, "Instances", enemySpawnNow);
		alarm[1] = irandom_range(800, 1200) / coeffSpawning;
	}
	else
	{
		alarm[1] = 1;
	}
}
else
{
	alarm[1] = irandom_range(250, 500) / coeffSpawning;
}