draw_sprite_ext(spr_hpPanel, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 0.4);
draw_set_font(bitmap_font);

if instance_exists(obj_hero)
{
	//хп панель
	draw_set_halign(fa_right);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x + 26, (obj_camera.y + (new_y / 2)) + diff_y + 12, "HP");
	draw_sprite(spr_hpHeroBar, 1, (obj_camera.x + (new_x / 2)) + diff_x + 35, (obj_camera.y + (new_y / 2)) + diff_y + 7);
	draw_sprite_part(spr_hpHeroBar, 0, 0, 0, pixW_bar * (obj_hero.heroHp / obj_hero.maxHeroHp), pixH_bar, (obj_camera.x + (new_x / 2)) + diff_x + 35, (obj_camera.y + (new_y / 2)) + diff_y + 7);
	
	if bossNowActive != 0
	{
		if bossNowActive = 1
		{
			scr_bossHpHUD(obj_bossShaker); // передаются данные для отрисовки hp hud и названия босса
		}
	}
	
	// текст количества хп
	draw_set_halign(fa_right);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x + 33 + (106 / 2), (obj_camera.y + (new_y / 2)) + diff_y + 12, string(round(obj_hero.heroHp)))
	draw_set_halign(fa_center);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x + 36 + (106 / 2), (obj_camera.y + (new_y / 2)) + diff_y + 12, "|")
	draw_set_halign(fa_left);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x + 40 + (106 / 2), (obj_camera.y + (new_y / 2)) + diff_y + 12, string(obj_hero.maxHeroHp))
	
	//опыт панель
	draw_text((obj_camera.x + (new_x / 2)) + diff_x + 14, (obj_camera.y + (new_y / 2)) + diff_y + 12 + pixH_bar + 1, "LVL:");
	draw_set_color(#FF9E21);
	draw_set_halign(fa_center);
	draw_text((obj_camera.x + (new_x / 2)) + diff_x + 53, (obj_camera.y + (new_y / 2)) + diff_y + 12 + pixH_bar + 1, obj_hero.heroLvl);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_sprite(spr_expHeroBar, 1, (obj_camera.x + (new_x / 2)) + diff_x + 35 + 34, (obj_camera.y + (new_y / 2)) + diff_y + 7 + pixH_bar + 9);
	draw_sprite_part(spr_expHeroBar, 0, 0, 0, pixW_bar_exp * (obj_hero.heroExp / obj_hero.upLvlExp), pixH_bar_exp, (obj_camera.x + (new_x / 2)) + diff_x + 35 + 34, (obj_camera.y + (new_y / 2)) + diff_y + 7 + pixH_bar + 5);
	
	// смотреть как уровень скалируется 
	//draw_text((obj_camera.x + (new_x / 2)) + diff_x + 53, (obj_camera.y + (new_y / 2)) + diff_y + 12 + pixH_bar + 10, string(obj_hero.heroExp) + "\n" + string(obj_hero.upLvlExp));
}



/*
draw_sprite_ext(spr_coins, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y + 4, 1, 1, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_font(bitmap_font);
draw_text((obj_camera.x + (new_x / 2)) + diff_x + 1, (obj_camera.y + (new_y / 2)) + diff_y + 6, string(obj_hero.heroMoney) + " $");
draw_set_halign(fa_left);

*/