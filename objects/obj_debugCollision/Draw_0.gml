if global.debugMode = 1
{
	with(obj_chest)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_wall)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_wall_v)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_enemy)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_enemy_shield)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_enemyJumper)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_enemyRunner)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_enemySlower)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	
	//отрисовка области деактивации
	with(obj_camera)
	{
		draw_rectangle(obj_hero.x + half_visible, obj_hero.y + half_visible, obj_hero.x - half_visible, obj_hero.y - half_visible, true);
		draw_rectangle(obj_hero.x + (half_visible - 100), obj_hero.y + (half_visible - 100), obj_hero.x - (half_visible - 100), obj_hero.y - (half_visible - 100), true);
	}
	
	//отрисовка расстояния для стрельбы мобов
	with(obj_enemyJumper)
	{
		draw_circle(x, y, radFire, true);
	}
	
	//отрисовка коллизии пуль
	with(obj_bulletHero_rifle)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_bulletHero_shotgun)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with(obj_bulletHero_snrifle)
	{
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}


}
else
{
	
}