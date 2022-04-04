if sprite_index != spr_chest_opened
{
	if collision_circle(x, y - 6, dist_activate, obj_hero, false, true) and obj_hero.heroMoney >= new_costOfChest
	{
		scaleResize = 1.25;
		
		sprite_index = spr_chest_opened;
		costDraw = 0;
		
		obj_hero.heroMoney -= new_costOfChest; // отнимаем бабки
		
		with (instance_create_layer(obj_hero.x, obj_hero.y + random_range(textMinusPos_y - 5, textMinusPos_y + 5), "shadow", obj_damageCount))
		{
			textDamage = "-" + string(other.new_costOfChest) + "$";
			colorDamage = other.start_colorMinus;
		}
	
		// увеличиваем стоимость от открытий
		global.countOpen += coeffOpenCost;
		with (obj_chest)
		{
			new_costOfChest = round(costOfChest * global.countOpen);
		}
	
		// чота
		dir = obj_gunHero.image_angle;
		instance_create_layer(x + lengthdir_x(dist, dir), (y + lengthdir_y(dist, dir)), "Instances", randomItems);
		with (instance_create_layer(x + lengthdir_x(dist, dir), (y + lengthdir_y(dist, dir)), "Instances", obj_coinsTakeEffect))
		{
			image_xscale = 1.5;	
			image_yscale = 1.5;	
		}
	
		with (pressCreate)
		{
			instance_destroy();
		}
		nearestShine = instance_nearest(x, y, obj_chestShine);
		with (nearestShine)
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