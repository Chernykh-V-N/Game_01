draw_self();

//for debug mode
if global.debugMode = 1
{
	draw_line(x, y, mouse_x, mouse_y);
}

if (flash > 0)
{
	flash--;
	shader_set(sh_flashing);
	draw_self();
	shader_reset();
}