// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bossHpHUD(boss_obj)
{
	if instance_exists(boss_obj)
	{
		draw_set_halign(fa_center);
		draw_text(obj_camera.x, (obj_camera.y + (boss_obj.new_y / 2)) + boss_obj.diff_y - 10, boss_obj.nameBoss);
		draw_sprite_part(spr_bossHpBar, 1, 0, 0, boss_obj.pixW_bar, boss_obj.pixH_bar, obj_camera.x - (boss_obj.pixW_bar / 2), (obj_camera.y + (boss_obj.new_y / 2)) + boss_obj.diff_y);
		draw_sprite_part(spr_bossHpBar, 0, 0, 0, boss_obj.pixW_bar * (boss_obj.hp / boss_obj.maxhp), boss_obj.pixH_bar, obj_camera.x - (boss_obj.pixW_bar / 2), (obj_camera.y + (boss_obj.new_y / 2)) + boss_obj.diff_y);
		draw_set_halign(fa_left);
	}
}