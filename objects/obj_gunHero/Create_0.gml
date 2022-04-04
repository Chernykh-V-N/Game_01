gunHero_y = 13;

recoil = 0;
firing_delay = 0;

//controller_angle = 0;

gun_select = global.gunSelect - 1;
gun_type = global.typeGunSelect; // 0 - дефолт для всех видов оружия

image_speed = 0;

// 0 - shotgun
// 0 тип
shotgun_hpDamage = 7;
shotgun_shieldDamage = 7;
shotgun_firingDelay_start = 60 * 0.67;
shotgun_firingDelay = shotgun_firingDelay_start;
// 1 тип
shotgun_mod_hpDamage = 9;
shotgun_mod_shieldDamage = 9;
shotgun_mod_firingDelay_start = 60 * 0.15;
shotgun_mod_firingDelay = shotgun_mod_firingDelay_start;
shotgun_mod_count = 0;				// начальное число пуль в магазине
shotgun_mod_countMax = 3;			// максимальное число пуль в магазине
shotgun_mod_kdDelay = 60 * 0.75;	// начальное время заряжания одной пули в магазине
shotgun_mod_kdCoeff = 1;			// изначальный коэффициент увеличения времени заряжания каждой следующей пули
shotgun_mod_coeffNumber = 0.6;		// изначальное число, на которое увеличивается коэффициент для каждой дозарядки
									// -- по итогу, для каждой итерации число свое / kdCoeff + (coeffNumber * count)
if gun_select = 0 and gun_type = 1
{
	alarm[0] = shotgun_mod_kdDelay;	// начинаем заряжать магазин
}

<<<<<<< HEAD
#region Где брать звуки на каждый тип оружия 
soundRifle = Sound_AutomaticRifle_Shot_stealed; 
soundShotgun = Sound_SniperRifle_Shot_stealed;
soundSnrifle = Sound_SniperRifle_Shot_stealed;

#endregion
=======
// nejopa

soundRifle = 1;
soundShotgun = 1;
soundSnrifle = 1;
>>>>>>> aa64d2ece38a3c4e76e6aa7ed703d916fbeb3ec3



// 1 - rifle
// 0 тип
rifle_hpDamage = 8;
rifle_shieldDamage = 8;
rifle_firingDelay_start = 60 * 0.17;
rifle_firingDelay = rifle_firingDelay_start;
// 1 тип
rifle_mod_hpDamage = 6;
rifle_mod_shieldDamage = 6;
rifle_mod_firingDelay_start = 60 * 0.25;
rifle_mod_firingDelay = rifle_mod_firingDelay_start;

// 2 - sniper rifle
// 0 тип
snrifle_hpDamage = 65;
snrifle_shieldDamage = 65;
snrifle_firingDelay_start = 60 * 1.5;
snrifle_firingDelay = snrifle_firingDelay_start;
// 1 тип
snrifle_mod_hpDamage = 33;
snrifle_mod_shieldDamage = 33;
snrifle_mod_firingDelay_start = 60 * 1.7;
snrifle_mod_firingDelay = snrifle_mod_firingDelay_start;

flash = 0;
