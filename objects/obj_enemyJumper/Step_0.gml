// смерть противника
if hp <= 0
{
	audio_stop_sound(FlyingSound);
	
	scr_enemy_death  // == скрипт смерти противника ==
	(
		death_Sprite,		// спрайт для частиц "разрушения" противника
		obj_coins,			// объект денег
		count_money,		// число денег с противника
		obj_expEnemy,		// объект опыта
		count_exp,			// число опыта
		15,					// дальность выпадения денег и опыта от центра координат противника
		obj_brokeEffect,	// объект разрушения пули
		obj_destroyEffect,	// объект частиц "разрушени" противника
		8,					// количество частиц "разрушения" противника
		5					// дальность расположения частиц "разрушения" от центра объекта
	);
}

if work = 1
{
	//thats for shaking by shooting some obj
	image_angle += random_range(-1, 1);
	
	//thats for moving by shooting some obj
	x = x + lengthdir_x(0.1, obj_gunHero.image_angle);
	y = y + lengthdir_y(0.1, obj_gunHero.image_angle);
}
else
{
	image_angle = 0;
}

//vars about hpbar
//realX = x - pixW_bar/2;
//realY = y - pixH_bar/2;

//move to hero
if blinking = 0
{
	scr_moveToHero(obj_hero, enemySpeed);
}
else
{
	alarm[3] = 1;
	audio_play_sound(Sound_Chertolet_Teleport, 2, 0); //звук телепорта
}



if point_distance(x, y, obj_hero.x, obj_hero.y) < radFire
{
	firing_delay = firing_delay - 1;

	if firing_delay < 0
	{
		firing_delay = firing_delayReload;
		with (instance_create_layer(x, y - 14, "Instances", obj_enBullet_Easy))
		{
			speed = 4;
			direction = point_direction(x, y, obj_hero.x, obj_hero.y - 10) + random_range(-3, 3);
			image_angle = direction;
		}
	}
}

audio_listener_position(x, y, 0);
