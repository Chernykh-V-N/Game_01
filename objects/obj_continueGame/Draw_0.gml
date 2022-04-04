draw_set_font(global.textFont);
draw_set_halign(fa_center);


draw_sprite_ext(spr_pausePanel, 0, (ideal_width / 2), (ideal_height / 2) - 100, 1, 1, 0, c_white, 8);
draw_sprite_ext(spr_pausePanel, 1, (ideal_width / 2), (ideal_height / 2) - 100, 1, 1, 0, c_white, 0.3);
draw_text(x + (sprite_width / 2), y - 26, "PAUSE MENU");


draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_white, 0.6);


if mouseIn = 1
{
	draw_text(x + (sprite_width / 2), y + 8, "> CONTINUE GAME");
}
if mouseIn = 0
{
	draw_text(x + (sprite_width / 2), y + 8, "CONTINUE GAME");
}
draw_set_halign(fa_left);

