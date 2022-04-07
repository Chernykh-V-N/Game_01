// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_alphaCollision(_local_width, _local_height, _alpha)
{
	if collision_rectangle(
	x - ((_local_width/2) - 3),
	y - _local_height,
	x + ((_local_width/2) - 3),
	y - 3,
	obj_hero, true, true)
	{
		image_alpha = _alpha;
	}
	else
	{
		image_alpha = 1;
	}

	draw_self();
}