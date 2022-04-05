
draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, 0, 0.5) // тень
draw_self(); // сам объект

// щит
if skillShield = 1 // если щит активирован
{
	if shieldFlash > 0
	{
		shieldFlash--;
		draw_sprite_ext(spr_shield, 0, x, y - 11, shieldSize, shieldSize, rot / 1.5, c_black, 0.7) // энергощит
	}
	else
	{
		draw_sprite_ext(spr_shield, 0, x, y - 11, shieldSize, shieldSize, rot / 1.5, c_white, 0.7) // энергощит
	}
	// бар того, сколько еще хп
	draw_sprite_part(spr_timeBar, 1, 0, 0, 22, 7, x - 11, y - 36);
	draw_sprite_part(spr_timeBar, 0, 0, 0, 22 * (shieldHp / shieldHpMax), 7, x - 11, y - 36);
}

//for debug mode
if global.debugMode = 1
{
	draw_sprite(spr_heroCollisionMovement, 0, x, y);
}
if turretTake = 1
{
	draw_sprite(spr_turretCircle, 0, x, y);
}

scr_flashObj(sh_flashing); // мерцание