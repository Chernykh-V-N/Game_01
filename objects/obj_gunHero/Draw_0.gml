draw_self();

//for debug mode
if global.debugMode = 1
{
	draw_line(x, y, mouse_x, mouse_y);
}

scr_flashObj(sh_flashing); // мерцание