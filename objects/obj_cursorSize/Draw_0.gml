draw_sprite_ext(spr_selectBox, 0, x, y, 1, 1, 0, c_white, 1);
scr_textBorder_damageCount(x - textMinus, y + 6, fnt_costChest, c_white, c_black, nameText, 1);
switch (selectSize)
{
	case 0:	//28
		scr_textBorder_damageCount(x + 20, y + 6, fnt_costChest, c_black, c_white, "28 px", 1);
	break;
	case 1: //20
		scr_textBorder_damageCount(x + 20, y + 6, fnt_costChest, c_black, c_white, "20 px", 1);
	break;
	case 2: //12
		scr_textBorder_damageCount(x + 20, y + 6, fnt_costChest, c_black, c_white, "12 px", 1);
	break;
}

if global.buttonNum = 2
{
	if pressed = 1
	{
		for (i = 0; i < settingSize; i += 1)
		{
			draw_sprite_ext(spr_selectBox, 1, x, y + (cellDiff * i) + cellDiff, 1, 1, 0, c_white, 0.9);
			switch (i)
			{
				case 0:	//28
					scr_textBorder_damageCount(x + 20, y + (cellDiff * i) + 6 + cellDiff, fnt_costChest, c_black, c_white, "28 px", 1);
				break;
				case 1: //20
					scr_textBorder_damageCount(x + 20, y + (cellDiff * i) + 6 + cellDiff, fnt_costChest, c_black, c_white, "20 px", 1);
				break;
				case 2: //12
					scr_textBorder_damageCount(x + 20, y + (cellDiff * i) + 6 + cellDiff, fnt_costChest, c_black, c_white, "12 px", 1);
				break;
			}
			if point_in_rectangle(mouse_x, mouse_y, x, y + (cellDiff * i) + cellDiff, x + 140, y + (cellDiff * i) + 23 + cellDiff)
			{
				if mouse_check_button_released(mb_left)
				{
					image_index = 0;
					selectSize = i;
					pressed = 0;
					global.buttonNum = 0;
					exit;
				}
			}
		}
	}
}