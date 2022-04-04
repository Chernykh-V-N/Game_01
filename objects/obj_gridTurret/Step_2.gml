x = mouse_x;
y = mouse_y;

if point_distance(obj_hero.x, obj_hero.y, mouse_x, mouse_y) > obj_hero.turretDist
{
	image_index = 1;
}
else
{
	image_index = 0;
}


if obj_hero.turretTake = 0
{
	instance_destroy();
}