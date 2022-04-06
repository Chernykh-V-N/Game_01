draw_set_font(global.textFont);
draw_set_halign(fa_center);

if selectGun = 1
{
	draw_text(x + 1, y + minusName, "SHOTGUN");
	draw_sprite(spr_takeGun, 0, x, y);
	draw_sprite(spr_arrow, 1, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 2, x - (minusArrow / 3.5), y - minusArrow);
	hpDamage = shotgun_hpDamage;
	shieldDamage = shotgun_shieldDamage;
	firingDelay = string(shotgun_firingDelay / 60) + " S.";
	bulletOnce = shotgun_bulletOnce;

}
if selectGun = 2
{
	draw_text(x + 1, y + minusName, "RIFLE");
	draw_sprite(spr_takeGun, 1, x, y);
	draw_sprite(spr_arrow, 0, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 2, x - (minusArrow / 3.5), y - minusArrow);
	hpDamage = rifle_hpDamage ;
	shieldDamage = rifle_shieldDamage;
	firingDelay = string(rifle_firingDelay / 60) + " S.";
	bulletOnce = rifle_bulletOnce;
}
if selectGun = 3
{
	draw_text(x + 1, y + minusName, "SNIPER RIFLE");
	draw_sprite(spr_takeGun, 2, x, y);
	draw_sprite(spr_arrow, 0, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 3, x - (minusArrow / 3.5), y - minusArrow);
	hpDamage = snrifle_hpDamage;
	shieldDamage = snrifle_shieldDamage;
	firingDelay = string(snrifle_firingDelay / 60) + " S.";
	bulletOnce = snrifle_bulletOnce;
}

draw_set_halign(fa_left);

draw_set_color(colorText);
draw_sprite(spr_infoGun, 0, x + minusText_x, y + minusText_y);
draw_text(x + minusText_x + forText_x, y + minusText_y + forText_y, hpDamage);
draw_sprite(spr_infoGun, 1, x + minusText_x - 1, y + minusText_y + diffText);
draw_text(x + minusText_x + forText_x, y + minusText_y + diffText + forText_y, shieldDamage);
draw_sprite(spr_infoGun, 2, x + minusText_x, y + minusText_y + (diffText * 2));
draw_text(x + minusText_x + forText_x, y + minusText_y + (diffText * 2) + forText_y, firingDelay);
draw_sprite(spr_infoGun, 3, x + minusText_x, y + minusText_y + (diffText * 3));
draw_text(x + minusText_x + forText_x, y + minusText_y + (diffText * 3) + forText_y, bulletOnce);
draw_set_color(c_white);

if point_in_rectangle(mouse_x, mouse_y,
(x - (minusArrow / 3.5)) - 5,
(y - minusArrow) - 5,
(x - (minusArrow / 3.5)) + 5,
(y - minusArrow) + 5
)
{
	if mouse_check_button_pressed(mb_left)
	{
		if selectGun < maxGuns
		{
			if global.dark = 0
			{
				audio_play_sound(Sound_Click, 2, false);
			}
			selectGun += 1;
		}
	}
}

if point_in_rectangle(mouse_x, mouse_y,
(x + (minusArrow / 3.5)) - 5,
(y - minusArrow) - 5,
(x + (minusArrow / 3.5)) + 5,
(y - minusArrow) + 5
)
{
	if mouse_check_button_pressed(mb_left)
	{
		if selectGun > 1
		{
			if global.dark = 0
			{
				audio_play_sound(Sound_Click, 2, false);
			}
			selectGun -= 1;
		}
	}
}

