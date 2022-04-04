draw_sprite_ext(spr_hudUI, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 0.4);
draw_sprite(spr_skillsContainers, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y);

draw_set_font(bitmap_font);
draw_set_halign(fa_center);

if instance_exists(obj_hero)
{
	draw_sprite_part(spr_skillM2, obj_hero.skillTake, 0, 0, pixW_bar, pixH_bar, (obj_camera.x + (new_x / 2)) + diff_x + 78, (obj_camera.y + (new_y / 2)) + diff_y - 47);
	draw_sprite_part(spr_skillM2, 0, 0, 0, pixW_bar, pixH_bar * (obj_hero.alarm[0] / obj_hero.maxKD), (obj_camera.x + (new_x / 2)) + diff_x + 78, (obj_camera.y + (new_y / 2)) + diff_y - 47);
	
	if round(obj_hero.alarm[0] / room_speed) != 0
	{
		draw_set_halign(fa_center);
		draw_text((obj_camera.x + (new_x / 2)) + diff_x + 78 + 16, (obj_camera.y + (new_y / 2)) + diff_y - 47 + 12, round(obj_hero.alarm[0] / room_speed));
	}
}

draw_set_halign(fa_left);