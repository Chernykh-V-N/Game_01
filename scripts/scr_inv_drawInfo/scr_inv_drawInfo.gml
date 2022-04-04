// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377

function scr_inv_drawInfo(xx, yy, color, color_default, buffName, buffCount, buffCoeff, signText, addText){
	draw_text(xx - 100, yy - 55, buffName);
	draw_set_color(color);
	draw_text(xx - 100, yy - 43, signText + string(buffCount * buffCoeff) + addText);
	draw_set_color(color_default);
}

