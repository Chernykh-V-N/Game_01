
//draw_sprite_ext(spr_shadow, 0, x, y - 2, 1, 1, 0, 0, 0.5) // тень

draw_sprite_ext(spr_shaker_mainBody, ani_speed_mainBody, x, y, image_xscale, image_yscale, boss_angle, c_white, 1);
draw_sprite_ext(spr_shaker_head, ani_speed_head, x, y + ani_head_y, image_xscale, image_yscale, boss_angle, c_white, 1);
draw_sprite_ext(spr_shaker_roots, ani_speed_roots, x, y, image_xscale, image_yscale, boss_angle, c_white, 1);

if activeBoss = 1
{
	with (obj_hpHUD)
	{
		bossNowActive = 1; // переменная босса которого сейчас пиздим
	}
}

if (flash > 0)
{
	flash--;
	shader_set(sh_flashing);
	draw_sprite_ext(spr_shaker_mainBody, ani_speed_mainBody, x, y, 1, 1, boss_angle, c_white, 1);
	draw_sprite_ext(spr_shaker_head, ani_speed_head, x, y + ani_head_y, 1, 1, boss_angle, c_white, 1);
	draw_sprite_ext(spr_shaker_roots, ani_speed_roots, x, y, 1, 1, boss_angle, c_white, 1);
	shader_reset();
}