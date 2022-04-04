// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inv_drawCells(sprCell_type, numberCell_type, cellCount, rowLenght, _cellDiff, x_cell, y_cell, x_diffItem, y_diffItem, invType, spriteCell, imageNumber_back, imageNumber_front, _alphaCell, alpha){
	var _coeff_heroic = 0.35;
	var _coeff_rare = 0.80;
	var _coeff_common = 1;
	var _colorBuffs = #83E500;
	var _colorDefault = c_white;
	draw_sprite_ext(sprCell_type, numberCell_type, x_cell, y_cell - 30, 1, 1, 0, c_white, alpha);
	draw_set_font(global.textFont);
	for (i = 0; i < cellCount; i += 1)
	{
		var xx_2 = x_cell + (i mod rowLenght) * _cellDiff;
		var yy_2 = y_cell + (i div rowLenght) * _cellDiff;
		draw_sprite_ext(spriteCell, imageNumber_back, xx_2, yy_2, 1, 1, 0, c_white, _alphaCell);
		draw_sprite_ext(spriteCell, imageNumber_front, xx_2, yy_2, 1, 1, 0, c_white, alpha);
		if is_struct(invType[i])
		{
			draw_sprite_ext(invType[i].sprite, 0, xx_2, yy_2 + 13, 1, 1, 0, c_white, alpha);
			draw_set_halign(fa_right);
			draw_text(xx_2 + x_diffItem, yy_2 + y_diffItem, invType[i].num);
			draw_set_halign(fa_left);
			draw_set_color(c_white);
			//
			if point_in_rectangle(mouse_x, mouse_y, xx_2 - (_cellDiff / 2), yy_2 - (_cellDiff / 2), xx_2 + (_cellDiff / 2), yy_2 + (_cellDiff / 2))
			{
				draw_sprite(spr_infoItems, -1, xx_2 + 16, yy_2 - 16)
				if invType = global.inventory_1 { draw_set_color(#E54444); }
				if invType = global.inventory_2 { draw_set_color(#83E500); }
				if invType = global.inventory_3 { draw_set_color(#FFFFFF); }
				draw_text(xx_2 - 100, yy_2 - 72, "> " + string(invType[i].nameItem) + "")
				draw_set_color(c_white);
				switch (invType[i].nameItem)
				{
						// HEROIC
					case "Opener":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"LIFESTEAL",
							obj_itemContainer.lifesteal_Damage, power(invType[i].num, _coeff_heroic),
							"+", "% total"
						);
					break;
					case "Rock":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↑ CRIT DAMAGE",
							obj_itemContainer.critBuff, power(invType[i].num, _coeff_heroic),
							"+", "% total"
						);
					break;
					case "Book":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↓ KD SHOOTING",
							obj_itemContainer.shootKDBuff, power(invType[i].num, _coeff_heroic),
							"-", "% total"
						);
					break;
						
						// RARE
					case "Coffee":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↑ HERO SPEED",
							obj_itemContainer.speedBuff, power(invType[i].num, _coeff_heroic),
							"+", " spd total"
						);
					break;
					case "Card":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↑ MONEY VALUE",
							obj_itemContainer.moneyBuff, power(invType[i].num, _coeff_rare),
							"+", "% total"
						);
					break;
					case "Glasses":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↓ ARMOR OF OPP",
							obj_itemContainer.armReductionBuff, power(invType[i].num, _coeff_rare),
							"-", "% total"
						);
					break;
						
						// COMMON
					case "Rope":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↑ PICKUP RANGE",
							obj_itemContainer.pickupBuff, power(invType[i].num, _coeff_common),
							"+", "% total"
						);
					break;
					case "Donut":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↑ PASSIVE HEAL",
							obj_itemContainer.defHealBuff, power(invType[i].num, _coeff_common),
							"+", " total"
						);
					break;
					case "Scotch":
						scr_inv_drawInfo
						(
							xx_2, yy_2,
							_colorBuffs, _colorDefault,
							"↑ HERO MAX HP",
							obj_itemContainer.hpBuff, power(invType[i].num, _coeff_common),
							"+", " total"
						);
					break;
				}
			}
		}
	}
}
