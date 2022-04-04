// тряска экрана при попадании противников по ГГ
move_tick += 0.5;
move = shake_magnitude * sin(move_tick);

if shake_magnitude > 0
{
	shake_magnitude -= 0.2;
	global.shake = 1;
}
else
{
	global.shake = 0;
}

if instance_exists(obj_hero)
{
	x = obj_hero.x;
	y = obj_hero.y;
}

if global.shake = 1
{
	with (obj_camera)
	{
		xTo = follow.x + obj_shakeHero.move;
		yTo = follow.y - obj_shakeHero.move;
		
		x += (xTo - x) / speed_cameraFollow;
		y += (yTo - y) / speed_cameraFollow;
	}
}