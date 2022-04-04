/// @description 

draw_self();
draw_set_valign(fa_center);
if image_index = 0
{
	draw_text(x + 20, y + 1, "> DEFAULT");
}
else
{
	draw_text(x + 20, y + 1, "> MODDED");
}
draw_set_valign(fa_left);