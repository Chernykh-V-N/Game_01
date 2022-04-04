/// @description дефолтный противник

if canSpawn = 1
{
	new_x = irandom_range(-1 * coord_0, coord_0);
	new_y = irandom_range(-1 * coord_0, coord_0);

	//if place_free(obj_hero.x + new_x, obj_hero.y + new_y)
	if !collision_rectangle(
	obj_hero.x + new_x - 15, 
	(obj_hero.y - 15) + new_y - 15, 
	obj_hero.x + new_x + 15, 
	(obj_hero.y - 15) + new_y + 15, 
	all, false, true)
	{
		enemySpawnNow = choose(obj_enemy);
		instance_create_layer(obj_hero.x + new_x, obj_hero.y + new_y, "hud", obj_coinsTakeEffect);
		instance_create_layer(obj_hero.x + new_x, obj_hero.y + new_y, "Instances", enemySpawnNow);
		alarm[0] = irandom_range(250, 500) / coeffSpawning;
	}
	else
	{
		alarm[0] = 1;
	}
}
else
{
	alarm[0] = irandom_range(250, 500) / coeffSpawning;
}