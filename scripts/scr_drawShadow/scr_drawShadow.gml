// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_drawShadow(_shadow_Spr, _x_diff, _y_diff)
{
	draw_sprite_ext(_shadow_Spr, 0, x + _x_diff, y + _y_diff, 1, 1, 0, 0, 0.5)
}