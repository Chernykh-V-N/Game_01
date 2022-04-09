
if opened = 0
{
	if collision_circle(x, y - 6, dist_activate, obj_hero, false, true)
	{
		costDraw = 1;
		image_index = 1;
		if can_create = 1
		{
			pressCreate = instance_create_layer(x, y + 12, "hud", obj_pressF); // y + 7
			can_create = 0;
		}
	}
	else
	{
		can_create = 1;
		with (pressCreate)
		{
			instance_destroy();
		}
		costDraw = 0;
		image_index = 0;
	}
}

//думаю стоит переделать, хз
//типа открытие сундука
image_xscale = lerp(image_xscale,scaleResize,.2);
image_yscale = lerp(image_yscale,scaleResize,.2);
if scaleResize > 1
{
	scaleResize -= 0.05;
}
if scaleResize < 1
{
	scaleResize = 1;
}

move_tick += 0.1;
move = 2.5 * sin(move_tick);