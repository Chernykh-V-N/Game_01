
draw_sprite_ext(spr_shadow, 0, x, y - 0, 1, 1, 0, 0, 0.5) // тень
draw_sprite_ext(spr_enemyJumper_body, 0, x, y, 1, 1, 0, c_white, 1) // оружие противника
draw_sprite_ext(spr_enemyJumper_gun, 0, x + 1, y - 15, 1, 1, point_direction(x, y, obj_hero.x, obj_hero.y - 10), c_white, 1) // оружие противника
scr_enemyGeneralDraw // == отрисовка основных элементов ==
(
	0, 0, 0, 0,				// отрисовка тени (active, sprite, x, y)
	1,						// отрисовка себя
	1						// отрисовка хп (1 - обычный, 2 - с щитом)
);

if (flash > 0)
{
	flash--;
	shader_set(sh_flashing);
	draw_self();
	shader_reset();
}