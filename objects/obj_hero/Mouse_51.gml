
if skillTake = 1 //blink
{
	if skillCan = 1 and click = 1
	{
		with (instance_create_layer(x, y, "hud", obj_blinkAngle))
		{
			global.blinkId = id;
		}
		click = 0;
	}
}

if skillTake = 3 //turret
{
	if skillCan = 1 and click = 1
	{
		turretTake = 1;
		cursor_sprite = spr_noneCursor;
		instance_create_layer(x, y, "hud", obj_gridTurret);
		click = 0;
	}
}

if skillTake = 4 //shield
{
	if skillCan = 1
	{
		if shieldHp > 0
		{
			skillShield = 1;
			shieldSize_active = 1;
		}
		else
		{
			skillShield = 0;
			skillCan = 0;
			maxKD = shieldKD;
			alarm[0] = shieldKD;
			shieldHp = shieldHpMax;
		}
	}
}