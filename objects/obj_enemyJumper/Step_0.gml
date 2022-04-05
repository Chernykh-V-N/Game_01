
audio_emitter_position(s_emit, x, y, 0); // позиция звука

#region смерть противника
if hp <= 0
{
	#region Звуки
	audio_stop_sound(soundFlying);
	audio_play_sound(Sound_Chertolet_Destroy, 2, 0);
	#endregion
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
#endregion

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

#region move to hero
if blinking = 0
{
	scr_moveToHero(obj_hero, enemySpeed);
}
else
{
	alarm[3] = 1;
	soundBlink = audio_play_sound_on(s_emit, Sound_Chertolet_Teleport, false, 3); // звук телепорта
}
#endregion

#region стрельба
if point_distance(x, y, obj_hero.x, obj_hero.y) < radFire
{
	firing_delay = firing_delay - 1;

	if firing_delay < 0
	{
		firing_delay = firing_delayReload;
		
		audio_play_sound_on(s_emit, Sound_Chertolet_Shot, false, 3);
		
		with (instance_create_layer(x, y - 14, "Instances", obj_enBullet_Easy))
		{
			speed = 4;
			direction = point_direction(x, y, obj_hero.x, obj_hero.y - 10) + random_range(-3, 3);
			image_angle = direction;
		}
	}
}


#endregion
