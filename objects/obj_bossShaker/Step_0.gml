if place_meeting(x, y, obj_hero) // если есть коллизия противника и гг
{
	if canAttack = 1 // если переменная атаки равна 1
	{
		scr_enemy_meleeAttack // == скрипт милишной атаки противника по гг
		( 
			obj_hero,				// объект гг
			obj_gunHero,			// объект оружия гг
			obj_shakeHero,			// объект контроля тряски экрана
			2,						// номер таймера используемого для отката атаки
			reloadAttack,			// время отката атаки
			damageCount,			// количество урона
			obj_hero.hero_flashTime	// время белого мерцания при уроне
		);
		// хилл от урона коллизией по гг
		hp += damageCount;
		repeat (5)
		{
			instance_create_layer(x + irandom_range(-25, 25), y + irandom_range(-25, 25), "shadow", obj_healEffect);
		}
	}
}

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
	with (placeCreated_obj)	// удаление доп объектов
	{
		instance_destroy();
	}
}

if hp >= maxhp
{
	hp = maxhp;
}

if work = 1
{
	ani_head_y = random_range(-1, 1);
	boss_angle = random_range(-1, 1);
}
else
{
	ani_head_y = 0;
	boss_angle = 0;
}

//vars about hpbar
realX = x - pixW_bar/2;
realY = y - pixH_bar/2;

if ani_speed_mainBody < 1
{
   ani_speed_mainBody +=.15; // .5 is the animation speed
}
else
{
   ani_speed_mainBody = 0; // reset the animation
}

if ani_speed_roots < 5
{
   ani_speed_roots +=.15; // .5 is the animation speed
}
else
{
   ani_speed_roots = 0; // reset the animation
}

if ani_speed_head < 12
{
   ani_speed_head +=.15; // .5 is the animation speed
}
else
{
   ani_speed_head = 0; // reset the animation
}

if flash = 0
{
	flash_boss = c_white;
}

if activeBoss = 1
{
	image_xscale = lerp(image_xscale, 1, 0.1);
	image_yscale = lerp(image_yscale, 1, 0.1);
}