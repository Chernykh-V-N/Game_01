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

	if firing_delay < 0
	{
		recoil = 5;
		firing_delay = timeReload;
		with (instance_create_layer(x, y, "Instances", obj_bulletHero_rifle))
		{
			speed = 7;
			direction = other.image_angle + random_range(-3, 3);
			image_angle = direction;
		}
		x = x - lengthdir_x(-12, image_angle);
		y = y - lengthdir_y(-12, image_angle);
		repeat (10)
		{
			instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5), "Instances", obj_boomFire);
		}
	}

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