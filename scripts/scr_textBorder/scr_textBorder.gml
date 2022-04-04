
function scr_textBorder(xText, yText, textFont, textColor_main, textColor_border, textText){
	draw_set_font(textFont);
	draw_set_color(textColor_border);
	draw_text(xText + 1, yText, textText);
	draw_text(xText - 1, yText, textText);
	draw_text(xText, yText + 1, textText);
	draw_text(xText, yText - 1, textText);
	draw_set_color(textColor_main);
	draw_text(xText, yText, textText);
	
	draw_set_color(c_white);
}