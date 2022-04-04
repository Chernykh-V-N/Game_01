// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gunShooting(recoil_local, firing_delay_local, bullet_Obj, countBullet_min, countBullet_max, diffCount, speedBullet, diffBullet, boomRandom, particle_Obj, _type_damage)
{
	if ((mouse_check_button (mb_left)) and (firing_delay < 0))
	{
		recoil = recoil_local;
		firing_delay = firing_delay_local;
		x_Diff = x - lengthdir_x(-1 * diffCount, image_angle);
		y_Diff = y - lengthdir_y(-1 * diffCount, image_angle);
		repeat (round(random_range(countBullet_min, countBullet_max)))
		{
			with (instance_create_layer(x, y, "Instances", bullet_Obj))
			{
				type_hpDamage = _type_damage;
				x = obj_gunHero.x_Diff;
				y = obj_gunHero.y_Diff;
				speed = speedBullet;
				direction = other.image_angle + random_range(-1 * diffBullet, diffBullet);
				image_angle = direction;
			}
		}
		repeat (10)
		{
			instance_create_layer(x_Diff + random_range(-1 * boomRandom, boomRandom), y_Diff + random_range(-1 * boomRandom, boomRandom), "Instances", particle_Obj);
		}
	}
}