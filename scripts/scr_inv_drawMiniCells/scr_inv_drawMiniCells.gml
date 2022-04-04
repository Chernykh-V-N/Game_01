// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inv_drawMiniCells(cellCount, rowLenght, x_cell, y_cell, invType, imageNumber_full, imageNumber_empty, alpha){
	for (i = 0; i < cellCount; i += 1)
	{
		var xx_2 = x_cell + (i mod rowLenght) * 12;
		var yy_2 = y_cell + (i div rowLenght) * 12;
		if is_struct(invType[i])
		{
			draw_sprite_ext(spr_miniCell, imageNumber_full, xx_2, yy_2, 1, 1, 0, c_white, alpha);
		}
		else
		{
			draw_sprite_ext(spr_miniCell, imageNumber_empty, xx_2, yy_2, 1, 1, 0, c_white, alpha);
		}
	}
}