
if image_index != 2
{
	if collision_circle(x, y - 6, dist_activate, obj_hero, false, true)
	{
		costDraw = 1;
		image_index = 1;
		if can_create = 1
		{
			pressCreate = instance_create_layer(x, y, "hud", obj_pressF);
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


#region 


if image_index != 2
{
	if collision_circle(x, y - 6, dist_activate, obj_hero, false, true)
	{
		scaleResize = 1.25;
		
		image_index = 2;
		costDraw = 0;
		
		instance_create_layer(x, y, "Instances", Test_van_obj);
		
		// чота
		dir = obj_gunHero.image_angle;
		with (instance_create_layer(x + lengthdir_x(dist, dir), (y + lengthdir_y(dist, dir)) - 10, "Instances", obj_coinsTakeEffect))
		{
			image_xscale = 1.5;	
			image_yscale = 1.5;	
		}
	
		instance_destroy();
	
		with (pressCreate)
		{
			instance_destroy();
		}
		with (shadow_there)
		{
			instance_destroy();
		}
	}
	else
	{
		if instance_exists(pressCreate)
		{
			with (pressCreate)
			{
				image_index = 2;
			}
		}
	}
}

#endregion
