if opened = 0
{
	if collision_circle(x, y - 6, dist_activate, obj_hero, false, true) and obj_hero.heroMoney >= new_costOfChest
	{
		scaleResize = 1.25;
		
		//sprite_index = spr_chest_opened;
		costDraw = 0;
		opened = 1;
		
		audio_play_sound(Sound_PickUp_Chest, 2, false);
		
		obj_hero.heroMoney -= new_costOfChest; // отнимаем бабки
		alarm[1] = 50;
		
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