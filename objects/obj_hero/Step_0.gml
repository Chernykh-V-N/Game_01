
audio_listener_position(x, y, 0); // ориентация объекта слушателя

// rot
rot += 1;

//maxHeroHp = 100 * buffMaxHp;
maxHeroHp = startHeroHp * buffMaxHp;

realX = x - pixW_bar/2;
realY = y - pixH_bar/2;

// нажатие кнопок
ukey = keyboard_check(ord("W"));
dkey = keyboard_check(ord("S"));
lkey = keyboard_check(ord("A"));
rkey = keyboard_check(ord("D"));

//определение направления гг от нажатой клавиши
scr_hero_direction (ukey, dkey, lkey, rkey);

// движение персонажа по горизонтали и вертикали
hSpeed = rkey - lkey;
vSpeed = dkey - ukey;

// движение
x += hSpeed * mSpeed;
y += vSpeed * mSpeed;

// движение по диагонали
if (vSpeed != 0) and (hSpeed != 0)
{
	mSpeed = obj_itemContainer.dagSpeed;
}
else
{
	mSpeed = obj_itemContainer.walkSpeed;
}

if (vSpeed == 0) && (hSpeed == 0) // тормозим звук ходьбы при остановке
{
	audio_pause_sound(Sound_Actor_Steps_Grass);
}
else
{
	audio_resume_sound(Sound_Actor_Steps_Grass);
}

// типа следы пыли от персонажа
if (vSpeed != 0) or (hSpeed != 0)
{
	delayDust -= 1;
	if delayDust = 0
	{
		delayDust = 15;
		with (instance_create_layer(x, y, "Instances", obj_heroDust))
		{
			image_xscale = obj_hero.image_xscale;
		}
	}
}

// проверка стороны персонажа и анимации
if obj_gunHero.image_angle <= angleGun_1 or obj_gunHero.image_angle >= angleGun_2	// смотрит вниз
{
	scr_hero_moveAnim
	(
		obj_gunHero,			// объект проверки угла оружия
		-5,						// глубина
		anim_heroRun,			// спрайт бега
		hero_animationSpeed,	// скорость анимации бега
		anim_heroIdle,			// спрайт стояния на месте
		0.1						// скорость стояния на месте
	);
}
else	// смотрит верх
{
	scr_hero_moveAnim
	(
		obj_gunHero,			// объект проверки угла оружия
		5,						// глубина
		anim_heroRun_back,		// спрайт бега
		hero_animationSpeed,	// скорость анимации бега
		anim_heroIdle_back,		// спрайт стояния на месте
		0.1						// скорость стояния на месте
	);
}

// проверка стороны поворота персонажа
if obj_gunHero.image_angle < 90 or obj_gunHero.image_angle > 270
{
	scr_hero_sideDir(obj_gunHero, 1);	// смотрит влево
}
else
{
	scr_hero_sideDir(obj_gunHero, -1);	// смотрит вправо
}

// ближайшая вражеская цель для героя
followEnemy = instance_nearest(mouse_x, mouse_y, obj_enemyFind);

if shieldSize_active = 1 and shieldSize != 1
{
	shieldSize += shieldSize_step;
}