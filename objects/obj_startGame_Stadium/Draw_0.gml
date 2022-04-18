draw_self();
//draw_set_font(global.textFont);
draw_set_halign(fa_center);
if mouseIn = 1
{
	draw_text(x + (sprite_width / 2), y + 8, "> START GAME");
}
if mouseIn = 0
{
	draw_text(x + (sprite_width / 2), y + 8, "START GAME");
}
draw_set_halign(fa_left);

