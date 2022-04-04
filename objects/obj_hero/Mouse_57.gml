
if skillTake = 1 //blink
{
	if skillCan = 1
	{
		if instance_exists(global.blinkId)
		{
			if global.blinkId.canBlinkPlace != 0
			{
				instance_create_layer(x, y, "hud", obj_coinsTakeEffect);
				x = x + lengthdir_x(distBlink, obj_gunHero.image_angle);
				y = y + lengthdir_y(distBlink, obj_gunHero.image_angle);
				instance_create_layer(x, y, "hud", obj_coinsTakeEffect);
				skillCan = 0;
				maxKD = blinkKD;
				alarm[0] = blinkKD;
			}
			else
			{
				skillCan = 1;
			}
			with (global.blinkId)
			{
				instance_destroy();
			}
		}
		else
		{
			skillCan = 1;
		}
		click = 1;
	}
}

if skillTake = 2 //heal
{
	if skillCan = 1
	{
		repeat (5)
		{
			instance_create_layer(x + irandom_range(-12, 12), y + irandom_range(-12, 12), "shadow", obj_healEffect);
		}
		skillCan = 0;
		maxKD = healKD;
		alarm[0] = healKD;
		heroHp += maxHeroHp * healCoeff;
		click = 1;
	}
}

if skillTake = 3 //turret
{
	if skillCan = 1 and click = 0
	{
		if point_distance(x, y, mouse_x, mouse_y) < turretDist
		{
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_turretBody);
			if obj_gridTurret.image_index = 0
			{
				maxKD = turretKD;
				alarm[0] = turretKD;
				skillCan = 0;
			}
			if obj_gridTurret.image_index = 1
			{
				alarm[0] = 0;
				skillCan = 1;
			}
			with (obj_gridTurret)
			{
				instance_destroy();
			}
		}
		else
		{
			alarm[0] = 0;
			skillCan = 1;
		}
		turretTake = 0;
		cursor_sprite = spr_cursor_28;
		click = 1;
	}
}

if skillTake = 4 //shield
{
	if skillCan = 1
	{
		skillShield = 0;
		shieldSize_active = 0;
		shieldSize = shieldSize_start;
	}
}