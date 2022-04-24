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