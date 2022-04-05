
scr_enemyGeneralDraw // == отрисовка основных элементов ==
(
	1, spr_shadow, 0, -2,	// отрисовка тени (active, sprite, x, y)
	1,						// отрисовка себя
	2						// отрисовка хп (1 - обычный, 2 - с щитом)
);
scr_drawIconBuff(shield);	// отображение иконки баффа щита


if (flash > 0)
{
	flash--;
	shader_set(sh_flashing);
	draw_self();
	shader_reset();
}