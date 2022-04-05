// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_flashObj(_nameShader)
{
	if (flash > 0)
	{
		flash--;
		shader_set(_nameShader);
		draw_self();
		shader_reset();
	}
}