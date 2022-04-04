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
	draw_text(x + 2, y - 30, "THE BOSS");
	draw_set_halign(fa_left);
}