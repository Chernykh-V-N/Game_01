/// @description только дебаг

//for debug mode
if global.debugMode = 1
{
	draw_rectangle_color(0, 0, 200, 200, c_black, c_black, c_black, c_black, false);
	
	draw_set_font(fnt_damageEnemy);
	draw_set_halign(fa_left);
	
	draw_set_color(c_orange);
	draw_text(20, 20, "depth_hero: " + string(round(depth)));
	draw_text(20, 40, "depth_gun: " + string(round(obj_gunHero.depth)));
	draw_text(20, 60, "hero_heal: " + string(defHealHero));
	
	draw_set_color(c_white);
	draw_text(20, 90, "dir: " + string(dir));
	draw_text(20, 110, "dir_gun: " + string(obj_gunHero.image_angle));
	draw_text(20, 130, "alarm_skill_M2: " + string(obj_hero.alarm[0]));
	
	draw_set_color(c_green);
	draw_text(20, 160, "FPS: " + string(fps) + "/" + string(fps_real));
	draw_text(20, 180, "hero_spd: " + string(obj_itemContainer.armReduction)); //mSpeed
	
	draw_set_color(c_white);
}