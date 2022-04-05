
draw_sprite_ext(spr_shadow, 0, x, y - 0, 1, 1, 0, 0, 0.5) // тень
draw_sprite_ext(spr_enemyJumper_body, 0, x, y, 1, 1, 0, c_white, 1) // оружие противника
draw_sprite_ext(spr_enemyJumper_gun, 0, x + 1, y - 15, 1, 1, point_direction(x, y, obj_hero.x, obj_hero.y - 10), c_white, 1) // оружие противника
draw_self();

draw_sprite_part(spr_healthBar, 1, 0, 0, pixW_bar, pixH_bar, realX, realY - constY_barHeight);
draw_sprite_part(spr_healthBar, 0, 0, 0, pixW_bar * (hp / maxhp), pixH_bar, realX, realY - constY_barHeight);

if (flash > 0)
{
	flash--;
	shader_set(sh_flashing);
	draw_self();
	shader_reset();
}