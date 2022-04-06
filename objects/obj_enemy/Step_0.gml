
if place_meeting(x, y, obj_hero) // если есть коллизия противника и гг
{
	if canAttack = 1 // если переменная атаки равна 1
	{
		#region звук атаки
			Sound_Of_Attack = choose(
			Sound_Default_Attack_1,
			Sound_Default_Attack_2,
			Sound_Default_Attack_3,
			Sound_Default_Attack_4);
		#endregion
		scr_enemy_meleeAttack // == скрипт милишной атаки противника по гг
		( 
			obj_hero,				// объект гг
			obj_gunHero,			// объект оружия гг
			obj_shakeHero,			// объект контроля тряски экрана
			2,						// номер таймера используемого для отката атаки
			reloadAttack,			// время отката атаки
			damageCount,			// количество урона
			obj_hero.hero_flashTime,// время белого мерцания при уроне
			Sound_Of_Attack
		);
	}
}

if hp <= 0	// смерть противника
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

if work = 1	// когда ломается
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


