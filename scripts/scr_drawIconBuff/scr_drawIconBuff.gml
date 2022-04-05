// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_drawIconBuff(_shield)
{
	if _shield <= 0
	{
		draw_sprite_part(spr_baffsEnemy, baffDeactive - 1, 0, 0, 11, 11, realX - 10, realY - constY_barHeight - 2);
	}
	else
	{
		draw_sprite_part(spr_baffsEnemy, baff - 1, 0, 0, 11, 11, realX - 10, realY - constY_barHeight - 2);
	}
}