scr_enemyGeneralDraw // == отрисовка основных элементов ==
(
	1, spr_shadow, 0, -2,	// отрисовка тени (active, sprite, x, y)
	1,						// отрисовка себя
	1						// отрисовка хп (1 - обычный, 2 - с щитом)
);

if hp < maxhp
{
	draw_set_halign(fa_center);
	draw_text(x, y + 6, damageCount);
	draw_set_halign(fa_left);
}

scr_flashObj(sh_flashing); // мерцание