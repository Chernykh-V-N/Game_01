draw_sprite_ext(spr_moneyHUD, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 0.4);
draw_sprite_ext(spr_coins, 0, (obj_camera.x + (new_x / 2)) + diff_x, (obj_camera.y + (new_y / 2)) + diff_y + 4, 1, 1, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_font(bitmap_font);
draw_text((obj_camera.x + (new_x / 2)) + diff_x + 1, (obj_camera.y + (new_y / 2)) + diff_y + 6, string(obj_hero.heroMoney) + " $");
draw_set_halign(fa_left);