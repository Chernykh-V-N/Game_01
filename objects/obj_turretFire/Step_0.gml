if instance_exists(obj_turretBody)
{
	depth = obj_turretBody.depth - 1;

	x = obj_turretBody.x;
	y = obj_turretBody.y - 10;
}

if instance_exists(obj_enemyFind)
{
	instTurr = instance_nearest(x, y, obj_enemyFind);
	image_angle = point_direction(x, y, instTurr.x, instTurr.y - 10);

	firing_delay = firing_delay - 1;
	recoil = max(0, recoil - 1);

	scr_turretShooting				// == скрипт выстрела ==
	(
		5,									// отдача выстрела
		timeReload,							// задержка выстрела
		obj_bulletHero_rifle,				// объект пули
		1,									// минимальное число пуль за один раз
		1,									// максимальное число пуль за один раз
		12,									// отдаления места выстрела от центра объекта оружия
		7,									// скорость пули
		3,									// разброс выстрелов
		5,									// разброс партиклов выстрела
		obj_boomFire,						// объект партиклов выстрела
		obj_gunHero.shotgun_hpDamage,		// урон
		sound_shotTurret					// звук стрельбы
	);

	x = x - lengthdir_x(recoil, image_angle);
	y = y - lengthdir_y(recoil, image_angle);

}

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}