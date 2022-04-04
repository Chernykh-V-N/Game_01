x = obj_hero.x;
y = obj_hero.y - gunHero_y;

image_index = gun_select;
image_angle = point_direction(x, y, mouse_x, mouse_y);	

firing_delay = firing_delay - 1;
recoil = max(0, recoil - 1)

if gun_select = 0 // 0 - shotgun
{
	if gun_type = 0 // дефолтная модификация оружия
	{
		scr_gunShooting				// == скрипт выстрела ==
		(
			10,									// отдача выстрела
			shotgun_firingDelay,				// задержка выстрела
			obj_bulletHero_shotgun,				// объект пули
			3,									// минимальное число пуль за один раз
			6,									// максимальное число пуль за один раз
			15,									// отдаления места выстрела от центра объекта оружия
			3,									// скорость пули
			17,									// разброс выстрелов
			5,									// разброс партиклов выстрела
			obj_boomFire,						// объект партиклов выстрела
			obj_gunHero.shotgun_hpDamage,		// урон
			soundShotgun						// урон
		);
		//obj_hero.x = obj_hero.x - lengthdir_x(recoil / 10, image_angle);
		//obj_hero.y = obj_hero.y - lengthdir_y(recoil / 10, image_angle);
	}
	if gun_type = 1 // дефолтная модификация оружия
	{
		if shotgun_mod_count > 0 // если заряжено больше нуля пуль
		{
			if ((mouse_check_button (mb_left)) and (firing_delay < 0))
			{
				shotgun_mod_count -= 1;
				alarm[0] = shotgun_mod_kdDelay * (shotgun_mod_kdCoeff + (shotgun_mod_count * shotgun_mod_coeffNumber));
			}
			scr_gunShooting				// == скрипт выстрела ==
			(
				10,									// отдача выстрела
				shotgun_mod_firingDelay,			// задержка выстрела
				obj_bulletHero_shotgun_mod,			// объект пули
				3,									// минимальное число пуль за один раз
				5,									// максимальное число пуль за один раз
				15,									// отдаления места выстрела от центра объекта оружия
				3,									// скорость пули
				17,									// разброс выстрелов
				5,									// разброс партиклов выстрела
				obj_boomFire,						// объект партиклов выстрела
				obj_gunHero.shotgun_mod_hpDamage,	// урон
				soundShotgun						// урон
			);
		}
		//obj_hero.x = obj_hero.x - lengthdir_x(recoil / 10, image_angle);
		//obj_hero.y = obj_hero.y - lengthdir_y(recoil / 10, image_angle);
	}
}
if gun_select = 1 // 1 - rifle
{
	if gun_type = 0 // дефолтная модификация оружия
	{
		scr_gunShooting				// == скрипт выстрела ==
		(
			5,								// отдача выстрела
			rifle_firingDelay,				// задержка выстрела
			obj_bulletHero_rifle,			// объект пули
			1,								// минимальное число пуль за один раз
			1,								// максимальное число пуль за один раз
			15,								// отдаления места выстрела от центра объекта оружия
			7,								// скорость пули
			3,								// разброс выстрелов
			5,								// разброс партиклов выстрела
			obj_boomFire,					// объект партиклов выстрела
			obj_gunHero.rifle_hpDamage,		// урон
			soundRifle							// урон
		);
		//obj_hero.x = obj_hero.x - lengthdir_x(recoil / 20, image_angle);
		//obj_hero.y = obj_hero.y - lengthdir_y(recoil / 20, image_angle);
	}
	if gun_type = 1 // модификация
	{
		scr_gunShooting				// == скрипт выстрела ==
		(
			5,								// отдача выстрела
			rifle_mod_firingDelay,			// задержка выстрела
			obj_bulletHero_rifle_mod,		// объект пули
			1,								// минимальное число пуль за один раз
			1,								// максимальное число пуль за один раз
			15,								// отдаления места выстрела от центра объекта оружия
			7,								// скорость пули
			3,								// разброс выстрелов
			5,								// разброс партиклов выстрела
			obj_boomFire,					// объект партиклов выстрела
			obj_gunHero.rifle_mod_hpDamage,	// урон
			soundRifle						// урон
		);
	}
}
if gun_select = 2 // 2 - sniper rifle
{
	if gun_type = 0 // дефолтная модификация оружия
	{
		scr_gunShooting				// == скрипт выстрела ==
		(
			16,									// отдача выстрела
			snrifle_firingDelay,				// задержка выстрела
			obj_bulletHero_snrifle,				// объект пули
			1,									// минимальное число пуль за один раз
			1,									// максимальное число пуль за один раз
			15,									// отдаления места выстрела от центра объекта оружия
			12,									// скорость пули
			0,									// разброс выстрелов
			5,									// разброс партиклов выстрела
			obj_boomFire,						// объект партиклов выстрела
			obj_gunHero.snrifle_hpDamage,		// урон
			soundSnrifle						// урон
		);
		//obj_hero.x = obj_hero.x - lengthdir_x(recoil / 10, image_angle);
		//obj_hero.y = obj_hero.y - lengthdir_y(recoil / 10, image_angle);
	}
	if gun_type = 1 // модификация
	{
		scr_gunShooting				// == скрипт выстрела ==
		(
			16,									// отдача выстрела
			snrifle_mod_firingDelay,			// задержка выстрела
			obj_bulletHero_snrifle_mod,			// объект пули
			1,									// минимальное число пуль за один раз
			1,									// максимальное число пуль за один раз
			15,									// отдаления места выстрела от центра объекта оружия
			12,									// скорость пули
			0,									// разброс выстрелов
			5,									// разброс партиклов выстрела
			obj_boomFire,						// объект партиклов выстрела
			obj_gunHero.snrifle_mod_hpDamage,	// урон
			soundSnrifle						// урон
		);
		//obj_hero.x = obj_hero.x - lengthdir_x(recoil / 10, image_angle);
		//obj_hero.y = obj_hero.y - lengthdir_y(recoil / 10, image_angle);
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

