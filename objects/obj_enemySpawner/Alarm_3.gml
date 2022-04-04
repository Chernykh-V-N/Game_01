/// @description стазисный противник-суммонер

if canSpawn = 1
{
	new_x = irandom_range(-1 * coord_3, coord_3);
	new_y = irandom_range(-1 * coord_3, coord_3);

	//if place_free(obj_hero.x + new_x, obj_hero.y + new_y)
	if !collision_rectangle(
	obj_hero.x + new_x - 15, 
	(obj_hero.y - 15) + new_y - 15, 
	obj_hero.x + new_x + 15, 
	(obj_hero.y - 15) + new_y + 15, 
	all, false, true)
	{
		enemySpawnNow = choose(obj_enemySlower);
		instance_create_layer(obj_hero.x + new_x, obj_hero.y + new_y, "hud", obj_coinsTakeEffect);
		instance_create_layer(obj_hero.x + new_x, obj_hero.y + new_y, "Instances", enemySpawnNow);
		alarm[3] = irandom_range(1700, 3000) / coeffSpawning;
	}
	else
	{
		alarm[3] = 1;
	}
}
else
{
	alarm[3] = irandom_range(250, 500) / coeffSpawning;
}