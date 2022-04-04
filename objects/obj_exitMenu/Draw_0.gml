draw_set_font(global.textFont);
draw_set_halign(fa_center);

draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_white, 0.6);


if mouseIn = 1
{
	draw_text(x + (sprite_width / 2), y + 8, "> EXIT MENU");
}
if mouseIn = 0
{
	draw_text(x + (sprite_width / 2), y + 8, "EXIT MENU");
}
draw_set_halign(fa_left);

