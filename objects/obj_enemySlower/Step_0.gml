// смерть противника
if hp <= 0
{
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
	with (placeCreated_obj) // удаление доп объектов
	{
		instance_destroy();
	}
}

if work = 1
{
	//thats for shaking by shooting some obj
	image_angle += random_range(-1, 1);
}
else
{
	image_angle = 0;
}

//vars about hpbar
realX = x - pixW_bar/2;
realY = y - pixH_bar/2;

//move to hero
/*
if instance_exists(obj_hero)
{
	mp_potential_step(obj_hero.x, obj_hero.y, enemySpeed, false);
}
*/

if collision_ellipse(x - 100, y - 80, x + 100, y + 80, obj_hero, false, true)
{
	obj_hero.mSpeed = obj_hero.mSpeed - (obj_hero.mSpeed / 100) * coeffSlower;
}

/*else
{
	
}