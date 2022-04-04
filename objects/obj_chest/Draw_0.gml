//draw_sprite(spr_chest, 2, x, y);
//draw_sprite_ext(spr_chest, 0, x, y + local_height/2, 1, 1, 0, c_black, 0.5);
draw_self();
draw_set_font(bitmap_font);

if global.debugMode = 1
{
	draw_circle(x, y - 6, dist_activate, true);
}
if costDraw = 1
{
	draw_set_halign(fa_center);
	draw_sprite(spr_coins, 0, x + 1, (y - 17) + (move / 2));
	draw_text(x + 2, (y - 38) + (move / 2), string(new_costOfChest) + "$");
	//scr_textBorder(x + 1, y - 40, fnt_costChest, c_white, c_black, new_costOfChest);
	draw_set_halign(fa_left);
}