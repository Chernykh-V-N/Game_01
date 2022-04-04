
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
realX = x - pixW_bar/2;
realY = y - pixH_bar/2;

//move to hero
scr_moveToHero(obj_hero, enemySpeed);