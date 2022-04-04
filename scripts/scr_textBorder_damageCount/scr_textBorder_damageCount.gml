
function scr_textBorder_damageCount(xText, yText, textFont, textColor_main, textColor_border, textText, textAlpha){
	draw_set_font(textFont);
	draw_text_color(xText + 1, yText, textText, textColor_border, textColor_border, textColor_border, textColor_border, textAlpha);
	draw_text_color(xText - 1, yText, textText, textColor_border, textColor_border, textColor_border, textColor_border, textAlpha);
	draw_text_color(xText, yText + 1, textText, textColor_border, textColor_border, textColor_border, textColor_border, textAlpha);
	draw_text_color(xText, yText - 1, textText, textColor_border, textColor_border, textColor_border, textColor_border, textAlpha);
	draw_text_color(xText, yText, textText, textColor_main, textColor_main, textColor_main, textColor_main, textAlpha);
	
	draw_set_color(c_white);
}