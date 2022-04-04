//draw_set_font(global.textFont);
if canSee = 1
{
	draw_sprite_ext(spr_darkLoadRoom, 0, camera_get_view_x(view_camera[1]), camera_get_view_y(view_camera[1]), camera_get_view_width(view_camera[1]), camera_get_view_height(view_camera[1]), 0, c_white, global.dark);

	draw_sprite_ext(spr_circleLoad, 0, camera_get_view_x(view_camera[1]) + 60, camera_get_view_y(view_camera[1]) + 50, 1, 1, -rot, c_white, global.dark);
	draw_sprite_ext(spr_circleLoad_2, 0, camera_get_view_x(view_camera[1]) + 60, camera_get_view_y(view_camera[1]) + 50, 1, 1, rot/2, c_white, global.dark);
	draw_sprite_ext(spr_circleLoad3, 0, camera_get_view_x(view_camera[1]) + 60, camera_get_view_y(view_camera[1]) + 50, 1, 1, rot, c_white, global.dark);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	//draw_text(camera_get_view_x(view_camera[1]) + 100, camera_get_view_y(view_camera[1]) + 80, "LEVEL 1");
	draw_text_ext_color(camera_get_view_x(view_camera[1]) + 100, camera_get_view_y(view_camera[1]) + 47, "FIRST LOCATION", 1, 100, c_white, c_white, c_white, c_white, global.dark);

	draw_text_ext_color(camera_get_view_x(view_camera[1]) + 45, camera_get_view_y(view_camera[1]) + 250, "GUN:", 20, 400, c_white, c_white, c_white, c_white, global.dark);
	draw_sprite_ext(spr_takeGun, global.gunSelect - 1, camera_get_view_x(view_camera[1]) + 65, camera_get_view_y(view_camera[1]) + 275, 1, 1, 0, c_white, global.dark);

	draw_text_ext_color(camera_get_view_x(view_camera[1]) + 100, camera_get_view_y(view_camera[1]) + 250, "SKILL:", 20, 400, c_white, c_white, c_white, c_white, global.dark);
	draw_sprite_ext(spr_takeSkills, global.skillSelect - 1, camera_get_view_x(view_camera[1]) + 120, camera_get_view_y(view_camera[1]) + 275, 1, 1, 0, c_white, global.dark);

	draw_text_ext_color(camera_get_view_x(view_camera[1]) + 44, camera_get_view_y(view_camera[1]) + 320, "PRESS [SPACE] TO CONTINUE...", 20, 400, c_white, c_white, c_white, c_white, global.dark * alphaPress);

	draw_sprite_ext(spr_gameLogo, 0, camera_get_view_x(view_camera[1]) + 570, camera_get_view_y(view_camera[1]) + 280, 1, 1, 0, c_white, global.dark);
	draw_text_ext_color(camera_get_view_x(view_camera[1]) + 529, camera_get_view_y(view_camera[1]) + 320, "VER.0.0.6 (PA)", 20, 400, c_white, c_white, c_white, c_white, global.dark);

	draw_set_valign(fa_left);
}