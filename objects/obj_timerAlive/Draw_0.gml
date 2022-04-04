
draw_sprite_ext(spr_timerPanel, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y - 82, 1, 1, 0, c_white, 0.4);
draw_sprite_ext(spr_timerIcon, 0, (obj_camera.x + (new_x / 2)) + diff_x + 18, (obj_camera.y + (new_y / 2)) + diff_y - 65, 1, 1, 0, c_white, 1);

draw_set_font(bitmap_font);
draw_set_halign(fa_left);
if minuteAlive < 10
{
	if (secondAlive / room_speed) < 10
	{
		draw_text((obj_camera.x + (new_x / 2)) + diff_x + 35, (obj_camera.y + (new_y / 2)) + diff_y - 68, "0" + string(minuteAlive) + ":" + "0" + string(secondAlive / room_speed));
	}
	else
	{
		draw_text((obj_camera.x + (new_x / 2)) + diff_x + 35, (obj_camera.y + (new_y / 2)) + diff_y - 68, "0" + string(minuteAlive) + ":" + string(secondAlive / room_speed));
	}
}
else
{
	if (secondAlive / room_speed) < 10
	{
		draw_text((obj_camera.x + (new_x / 2)) + diff_x + 35, (obj_camera.y + (new_y / 2)) + diff_y - 68, string(minuteAlive) + ":" + "0" + string(secondAlive / room_speed));
	}
	else
	{
		draw_text((obj_camera.x + (new_x / 2)) + diff_x + 35, (obj_camera.y + (new_y / 2)) + diff_y - 68, string(minuteAlive) + ":" + string(secondAlive / room_speed));
	}
}