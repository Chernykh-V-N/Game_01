// отрисовка для оружия
if obj_gunHero.gun_select = 1 and obj_gunHero.gun_type = 1 // рисуем рамку выбранной цели
{
	var _follObj = obj_hero.followEnemy;
	if instance_exists(_follObj)
	{
		draw_sprite_ext(spr_aimHero, 0, _follObj.x - (_follObj.sprite_width/2.2), _follObj.y - (_follObj.sprite_height), 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_aimHero, 0, _follObj.x + (_follObj.sprite_width/2.2), _follObj.y - (_follObj.sprite_height), -1, 1, 0, c_white, 1);
	
		draw_sprite_ext(spr_aimHero, 0, _follObj.x - (_follObj.sprite_width/2.2), _follObj.y, 1, -1, 0, c_white, 1);
		draw_sprite_ext(spr_aimHero, 0, _follObj.x + (_follObj.sprite_width/2.2), _follObj.y, -1, -1, 0, c_white, 1);
	}
}
if obj_gunHero.gun_select = 0 and obj_gunHero.gun_type = 1 // рисуем рамку выбранной цели
{
	if instance_exists(obj_gunHero)
	{
		draw_sprite_ext(spr_shotgunCount_mod, 1, obj_hero.x - bulletCount_x, obj_hero.y + bulletCount_y, 1, 1, 0, c_black, 0.5);
		draw_sprite_ext(spr_shotgunCount_mod, 1, obj_hero.x, obj_hero.y + bulletCount_y, 1, 1, 0, c_black, 0.5);
		draw_sprite_ext(spr_shotgunCount_mod, 1, obj_hero.x + bulletCount_x, obj_hero.y + bulletCount_y, 1, 1, 0, c_black, 0.5);
		if obj_gunHero.shotgun_mod_count >= 1
		{
			draw_sprite_ext(spr_shotgunCount_mod, 0, obj_hero.x - bulletCount_x, obj_hero.y + bulletCount_y, 1, 1, 0, c_white, 1);
		}
		if obj_gunHero.shotgun_mod_count >= 2
		{
			draw_sprite_ext(spr_shotgunCount_mod, 0, obj_hero.x, obj_hero.y + bulletCount_y, 1, 1, 0, c_white, 1);
		}
		if obj_gunHero.shotgun_mod_count >= 3
		{
			draw_sprite_ext(spr_shotgunCount_mod, 0, obj_hero.x + bulletCount_x, obj_hero.y + bulletCount_y, 1, 1, 0, c_white, 1);
		}
	}
}


draw_set_halign(fa_right);

/// перемещение инвентаря когда появляется выбор предметов из сфер
if global.canTake_sphere = 0
{
	startCell_big_y = -40;
	diff_y = -343;
}
else
{
	startCell_big_y = -40;
	diff_y = -64;
}

///

if indOpened = 0 // если большой инвентарь не открыт
{
	draw_sprite_ext(spr_miniBackItems, 0, obj_camera.x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 0.4);
	draw_sprite_ext(spr_miniBackItems, 1, obj_camera.x, (obj_camera.y + (new_y / 2)) + diff_y, 1, 1, 0, c_white, 1);
	
	scr_inv_drawMiniCells	// HEROIC  мини-ячейки
	(
		global.arraySize_1,									// количество ячеек
		rowLenght_1,										// количество ячеек в одной строке
		(obj_camera.x - 58),								// x первой
		(obj_camera.y + (new_y / 2)) + diff_y + 22,			// y первой
		global.inventory_1,									// тип инвентаря
		3,													// спрайт заполненной ячейки
		0,													// спрайт пустой ячейки
		1													// прозрачность
	);
	scr_inv_drawMiniCells	// RARE мини-ячейки
	(
		global.arraySize_2,									// количество ячеек
		rowLenght_2,										// количество ячеек в одной строке
		(obj_camera.x - 42),								// x первой
		(obj_camera.y + (new_y / 2)) + diff_y + 22,			// y первой
		global.inventory_2,									// тип инвентаря
		4,													// спрайт заполненной ячейки
		1,													// спрайт пустой ячейки
		1													// прозрачность
	);
	scr_inv_drawMiniCells	// COMMON мини-ячейки
	(
		global.arraySize_3,									// количество ячеек
		rowLenght_3,										// количество ячеек в одной строке
		(obj_camera.x - 2),									// x первой
		(obj_camera.y + (new_y / 2)) + diff_y + 22,			// y первой
		global.inventory_3,									// тип инвентаря
		5,													// спрайт заполненной ячейки
		2,													// спрайт пустой ячейки
		1													// прозрачность
	);
}
if indOpened = 1 // если большой инвентарь открыт
{
	//фон инвентаря
	draw_sprite_ext(spr_itemContainer, 0, (obj_camera.x) + startCell_x - cellDiff + 10, (obj_camera.y - 30) + startCell_big_y - cellDiff + 5, sizeBack_x, sizeBack_y, 0, c_white, 0.4);
	
	//левый верхний угол
	draw_sprite_ext(spr_inv_corner, 0, (obj_camera.x) + startCell_x - cellDiff + 9, (obj_camera.y - 30) + startCell_big_y - cellDiff + 4, 1, 1, 0, c_white, back_borderAlpha);
	draw_sprite_ext(spr_inv_line_h, 0, (obj_camera.x) + startCell_x - cellDiff + 12, (obj_camera.y - 30) + startCell_big_y - cellDiff + 3, (sizeBack_x * 3 - 4), 1, 0, c_white, back_borderAlpha);
	//правый верхний угол
	draw_sprite_ext(spr_inv_corner, 0, ((obj_camera.x) + startCell_x - cellDiff + 11) + sizeBack_x * 3, (obj_camera.y - 30) + startCell_big_y - cellDiff + 4, -1, 1, 0, c_white, back_borderAlpha);
	draw_sprite_ext(spr_inv_line_v, 0, ((obj_camera.x) + startCell_x - cellDiff + 11) + sizeBack_x * 3, (obj_camera.y - 30) + startCell_big_y - cellDiff + 7, 1, (sizeBack_y * 3 - 4), 0, c_white, back_borderAlpha);
	//левый нижний угол
	draw_sprite_ext(spr_inv_corner, 0, (obj_camera.x) + startCell_x - cellDiff + 9, ((obj_camera.y - 30) + startCell_big_y - cellDiff + 6) + sizeBack_y * 3, 1, -1, 0, c_white, back_borderAlpha);
	draw_sprite_ext(spr_inv_line_v, 0, (obj_camera.x) + startCell_x - cellDiff + 8, (obj_camera.y - 30) + startCell_big_y - cellDiff + 7, 1, (sizeBack_y * 3 - 4), 0, c_white, back_borderAlpha);
	//правый нижний угол
	draw_sprite_ext(spr_inv_corner, 0, ((obj_camera.x) + startCell_x - cellDiff + 11) + sizeBack_x * 3, ((obj_camera.y - 30) + startCell_big_y - cellDiff + 6) + sizeBack_y * 3, -1, -1, 0, c_white, back_borderAlpha);
	draw_sprite_ext(spr_inv_line_h, 0, (obj_camera.x) + startCell_x - cellDiff + 12, ((obj_camera.y - 30) + startCell_big_y - cellDiff + 6) + sizeBack_y * 3, (sizeBack_x * 3 - 4), 1, 0, c_white, back_borderAlpha);
	
	
	draw_set_font(bitmap_font); // задаем шрифт количеству предметов
	draw_set_halign(fa_left);
	draw_text((obj_camera.x) + startCell_x - cellDiff + 22, (obj_camera.y - 30) + startCell_big_y - cellDiff + 12, "> INVENTORY")
	draw_set_halign(fa_right);
	
	scr_inv_drawCells		// HEROIC ячейки
	(
		spr_itemCell_type,		// спрайт значка типа ячеек
		0,						// значения номера спрайта значка типа ячеек
		global.arraySize_1,		// количество ячеек
		rowLenght_1,			// количество ячеек в одной строке
		cellDiff,				// разница по ячейкам
		(obj_camera.x + startCell_x),		// x первой
		((obj_camera.y) + startCell_big_y),		// y первой
		12, 5,					// разница по x (n1) и y (n2) для значения количества айтемов
		global.inventory_1,		// тип инвентаря
		spr_itemCell,			// спрайт ячейки
		3, 0,					// номер кадра бэкграунда (n1) и самой ячейки (n2)
		alphaCell, 1			// прозрачность заднего спрайта ячейки (n1) и прозрачность рамки + текста ячейки (n2)
	);
	scr_inv_drawCells		// RARE ячейки
	(
		spr_itemCell_type,		// спрайт значка типа ячеек
		1,						// значения номера спрайта значка типа ячеек
		global.arraySize_2,		// количество ячеек
		rowLenght_2,			// количество ячеек в одной строке
		cellDiff,				// разница по ячейкам
		((obj_camera.x + cellDiff + diffPlace) + startCell_x),	// x первой
		((obj_camera.y) + startCell_big_y),		// y первой
		12, 5,					// разница по x (n1) и y (n2) для значения количества айтемов
		global.inventory_2,		// тип инвентаря
		spr_itemCell,			// спрайт ячейки
		3, 1,					// номер кадра бэкграунда (n1) и самой ячейки (n2)
		alphaCell, 1			// прозрачность заднего спрайта ячейки (n1) и прозрачность рамки + текста ячейки (n2)
	);
	scr_inv_drawCells		// COMMON ячейки
	(
		spr_itemCell_type,		// спрайт значка типа ячеек
		2,						// значения номера спрайта значка типа ячеек
		global.arraySize_3,		// количество ячеек
		rowLenght_3,			// количество ячеек в одной строке
		cellDiff,				// разница по ячейкам
		(((obj_camera.x + cellDiff + (diffPlace * 2)) + (cellDiff * (global.arraySize_2 / rowLenght_2))) + startCell_x),	// x первой
		((obj_camera.y) + startCell_big_y),		// y первой
		12,	5,					// разница по x (n1) и y (n2) для значения количества айтемов
		global.inventory_3,		// тип инвентаря
		spr_itemCell,			// спрайт ячейки
		3, 2,					// номер кадра бэкграунда (n1) и самой ячейки (n2)
		alphaCell, 1			// прозрачность заднего спрайта ячейки (n1) и прозрачность рамки + текста ячейки (n2)
	);
}