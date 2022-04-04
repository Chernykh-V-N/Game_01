if canShow = 1
{
	// центральная панель
	if point_in_rectangle(mouse_x, mouse_y,
	(obj_camera.x) - (sizePanel_x / 2),			// x1
	(obj_camera.y + start_y) - (sizePanel_y),	// y1
	(obj_camera.x) + (sizePanel_x / 2),			// x2
	(obj_camera.y + start_y))					// y2
	{
		mouseIn_1 = 1;
		draw_sprite_ext(spr_selectRandomItems, (objRarity - 1), obj_camera.x, obj_camera.y + start_y - y_InOut_1, 1 * scaleCoeff_1, 1 * scaleCoeff_1, 0, c_white, alphaBack);
		draw_sprite_ext(Item_1, 0, (obj_camera.x) + item_x, (obj_camera.y + start_y) - item_y - y_InOut_1, 1, 1, 0, c_white, 1);
		scr_ItemCell(Item_1, obj_camera.x, (obj_camera.y + start_y) - descr_y - y_InOut_1, obj_itemContainer.colorBuffs);
		if mouse_check_button_pressed(mb_left)
		{
			scaleCoeff_1 = scaleCoeff_new;
		}
		if mouse_check_button_released(mb_left)
		{
			scr_ItemSelected(Item_1);
			preStart_y -= 300;
			amountPower = 0.1;
			global.canTake_sphere = 1;
			instance_destroy();
		}
	}
	else
	{
		mouseIn_1 = 0;
		draw_sprite_ext(spr_selectRandomItems, (objRarity - 1), obj_camera.x, obj_camera.y + start_y - y_InOut_1, 1 * scaleCoeff_1, 1 * scaleCoeff_1, 0, c_white, alphaBack);
		draw_sprite_ext(Item_1, 0, (obj_camera.x) + item_x, (obj_camera.y + start_y) - item_y - y_InOut_1, 1, 1, 0, c_white, 1);
		scr_ItemCell(Item_1, obj_camera.x, (obj_camera.y + start_y) - descr_y - y_InOut_1, obj_itemContainer.colorBuffs);
	}
	draw_set_halign(fa_center);
	draw_text((obj_camera.x), (obj_camera.y + start_y) - item_y - y_InOut_1 - 30, "PRESS 2");
	draw_set_halign(fa_left);

	//левая панель
	if point_in_rectangle(mouse_x, mouse_y,
	(obj_camera.x) - sizePanel_x - (sizePanel_x / 2) - diffPanel,	// x1
	(obj_camera.y + start_y) - (sizePanel_y),						// y1
	(obj_camera.x) - (sizePanel_x / 2) - diffPanel,					// x2
	(obj_camera.y + start_y))										// y2
	{
		mouseIn_2 = 1;
		draw_sprite_ext(spr_selectRandomItems, (objRarity - 1), obj_camera.x - diffPanel - sizePanel_x, (obj_camera.y + start_y) - y_InOut_2, 1 * scaleCoeff_2, 1 * scaleCoeff_2, 0, c_white, alphaBack);
		draw_sprite_ext(Item_2, 0, (obj_camera.x - diffPanel - sizePanel_x) + item_x, (obj_camera.y + start_y) - item_y - y_InOut_2, 1, 1, 0, c_white, 1);
		scr_ItemCell(Item_2, obj_camera.x - diffPanel - sizePanel_x, (obj_camera.y + start_y) - descr_y - y_InOut_2, obj_itemContainer.colorBuffs);
		if mouse_check_button_pressed(mb_left)
		{
			scaleCoeff_2 = scaleCoeff_new;
		}
		if mouse_check_button_released(mb_left)
		{
			scr_ItemSelected(Item_2);
			preStart_y -= 300;
			amountPower = 0.1;
			global.canTake_sphere = 1;
			instance_destroy();
		}
	}
	else
	{
		mouseIn_2 = 0;
		draw_sprite_ext(spr_selectRandomItems, (objRarity - 1), obj_camera.x - diffPanel - sizePanel_x, (obj_camera.y + start_y) - y_InOut_2, 1 * scaleCoeff_2, 1 * scaleCoeff_2, 0, c_white, alphaBack);
		draw_sprite_ext(Item_2, 0, (obj_camera.x - diffPanel - sizePanel_x) + item_x, (obj_camera.y + start_y) - item_y - y_InOut_2, 1, 1, 0, c_white, 1);
		scr_ItemCell(Item_2, obj_camera.x - diffPanel - sizePanel_x, (obj_camera.y + start_y) - descr_y - y_InOut_2, obj_itemContainer.colorBuffs);
	}
	draw_set_halign(fa_center);
	draw_text(obj_camera.x - diffPanel - sizePanel_x, (obj_camera.y + start_y) - item_y - y_InOut_2 - 30, "PRESS 1");
	draw_set_halign(fa_left);

	//правая панель
	if point_in_rectangle(mouse_x, mouse_y,
	(obj_camera.x) + (sizePanel_x / 2) + diffPanel,					// x1
	(obj_camera.y + start_y) - (sizePanel_y),						// y1
	(obj_camera.x) + sizePanel_x + (sizePanel_x / 2) + diffPanel,	// x2
	(obj_camera.y + start_y))										// y2
	{
		mouseIn_3 = 1;
		draw_sprite_ext(spr_selectRandomItems, (objRarity - 1), obj_camera.x + diffPanel + sizePanel_x, (obj_camera.y + start_y) - y_InOut_3, 1 * scaleCoeff_3, 1 * scaleCoeff_3, 0, c_white, alphaBack);
		draw_sprite_ext(Item_3, 0, (obj_camera.x + diffPanel + sizePanel_x) + item_x, (obj_camera.y + start_y) - item_y - y_InOut_3, 1, 1, 0, c_white, 1);
		scr_ItemCell(Item_3, obj_camera.x + diffPanel + sizePanel_x, (obj_camera.y + start_y) - descr_y - y_InOut_3, obj_itemContainer.colorBuffs);
		if mouse_check_button_pressed(mb_left)
		{
			scaleCoeff_3 = scaleCoeff_new;
		}
		if mouse_check_button_released(mb_left)
		{
			scr_ItemSelected(Item_3);
			preStart_y -= 300;
			amountPower = 0.1;
			global.canTake_sphere = 1;
			instance_destroy();
		}
	}
	else
	{
		mouseIn_3 = 0;
		draw_sprite_ext(spr_selectRandomItems, (objRarity - 1), obj_camera.x + diffPanel + sizePanel_x, (obj_camera.y + start_y) - y_InOut_3, 1 * scaleCoeff_3, 1 * scaleCoeff_3, 0, c_white, alphaBack);
		draw_sprite_ext(Item_3, 0, (obj_camera.x + diffPanel + sizePanel_x) + item_x, (obj_camera.y + start_y) - item_y - y_InOut_3, 1, 1, 0, c_white, 1);
		scr_ItemCell(Item_3, obj_camera.x + diffPanel + sizePanel_x, (obj_camera.y + start_y) - descr_y - y_InOut_3, obj_itemContainer.colorBuffs);
	}
	draw_set_halign(fa_center);
	draw_text(obj_camera.x + diffPanel + sizePanel_x, (obj_camera.y + start_y) - item_y - y_InOut_3 - 30, "PRESS 3");
	draw_set_halign(fa_left);
}