draw_set_font(bitmap_font);

if point_in_rectangle(mouse_x, mouse_y,
(obj_camera.x + (new_x / 2)) + diff_x + btn_x - 15,		// x1
(obj_camera.y + (new_y / 2)) + diff_y + btn_y - 15,		// y1
(obj_camera.x + (new_x / 2)) + diff_x + btn_x + 15,		// x2
(obj_camera.y + (new_y / 2)) + diff_y + btn_y + 15)		// y2
{
	if mouse_check_button_pressed(mb_left)
	{
		fullPanel += 1;
		pressed = 1;
	}
	if mouse_check_button_released(mb_left)
	{
		pressed = 0;
	}
}

if fullPanel mod 2 = 0 
{
	//актив
	draw_sprite_ext(spr_tasksPanel_full, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 0.4);
	if pressed = 1
	{
		draw_sprite_ext(spr_tasksButton, 3, (obj_camera.x + (new_x / 2)) + diff_x + btn_x, (obj_camera.y + (new_y / 2)) + diff_y + btn_y, 1, 1, 0, c_white, 0.8);
	}
	else
	{
		draw_sprite_ext(spr_tasksButton, 4, (obj_camera.x + (new_x / 2)) + diff_x + btn_x, (obj_camera.y + (new_y / 2)) + diff_y + btn_y, 1, 1, 0, c_white, 0.8);
	}
	
	draw_set_halign(fa_left);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 115, (obj_camera.y + (new_y / 2)) + diff_y + 19, "TASKS:");
	draw_set_color(#FF9E21);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 140, (obj_camera.y + (new_y / 2)) + diff_y + 47, "•");
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 125, (obj_camera.y + (new_y / 2)) + diff_y + 47, "FIND THE BOSS");
	draw_set_color(#B7B7B7);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 140, (obj_camera.y + (new_y / 2)) + diff_y + 67, "•");
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 125, (obj_camera.y + (new_y / 2)) + diff_y + 67, "ENEMIES KILLED:");
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 125, (obj_camera.y + (new_y / 2)) + diff_y + 78, "0/75");
	draw_set_color(c_white);
}
else
{
	//неактив
	draw_sprite_ext(spr_tasksPanel, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 0.4);
	if pressed = 1
	{
		draw_sprite_ext(spr_tasksButton, 1, (obj_camera.x + (new_x / 2)) + diff_x + btn_x, (obj_camera.y + (new_y / 2)) + diff_y + btn_y, 1, 1, 0, c_white, 0.8);
	}
	else
	{
		draw_sprite_ext(spr_tasksButton, 2, (obj_camera.x + (new_x / 2)) + diff_x + btn_x, (obj_camera.y + (new_y / 2)) + diff_y + btn_y, 1, 1, 0, c_white, 0.8);
	}
	
	draw_set_halign(fa_left);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x - 115, (obj_camera.y + (new_y / 2)) + diff_y + 19, "TASKS:");
}
