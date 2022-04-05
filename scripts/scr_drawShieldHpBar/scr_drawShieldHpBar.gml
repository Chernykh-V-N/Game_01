// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_drawShieldHpBar(_pixW_bar, _pixH_bar, _realX, _realY, _constY_barHeight)
{
	draw_sprite_part(spr_healthBar, 1, 0, 0, _pixW_bar, _pixH_bar, _realX, _realY - _constY_barHeight);
	draw_sprite_part(spr_healthBar, 0, 0, 0, _pixW_bar * (hp / maxhp), _pixH_bar, _realX, _realY - _constY_barHeight);
	draw_sprite_part(spr_healthBar_shield, 0, 0, 0, _pixW_bar * (shield / maxshield), _pixH_bar, _realX, _realY - _constY_barHeight);
}