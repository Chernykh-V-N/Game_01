// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ItemCell(itemName, x_descr, y_descr, colorBuffs){
	draw_set_font(global.textFont); // задаю шрифт
	colorDescr = c_white;
	colorValid = c_white;	//цвет для текста "valid"
	switch (itemName)
	{
			// HEROIC
		case spr_item_centre_opener:
			textDescr = "LIFESTEAL";
			textBuff = string(obj_itemContainer.lifesteal_Damage) + "% OF DAMAGE";
			validDUP = 1;
		break;
		case spr_item_centre_rock:
			textDescr = "↑ CRIT DAMAGE";
			textBuff = "+" + string(obj_itemContainer.critBuff) + "% FOR EACH";
			validDUP = 1;
		break;
		case spr_item_centre_book:
			textDescr = "↓ KD SHOOTING";
			textBuff = "-" + string(obj_itemContainer.shootKDBuff) + "% FOR EACH";
			validDUP = 1;
		break;
			// RARE
		case spr_item_centre_coffee:
			textDescr = "↑ HERO SPEED";
			textBuff = "+" + string(obj_itemContainer.speedBuff) + "SPD FOR EACH";
			validDUP = 2;
		break;
		case spr_item_centre_card:
			textDescr = "↑ MONEY VALUE";
			textBuff = "+" + string(obj_itemContainer.moneyBuff) + "% FOR EACH";
			validDUP = 2;
		break;
		case spr_item_centre_glasses:
			textDescr = "↓ ARMOR OF OPP";
			textBuff = "-" + string(obj_itemContainer.armReductionBuff) + "% FOR EACH";
			validDUP = 2;
		break;
			// COMMON
		case spr_item_centre_rope:
			textDescr = "↑ PICKUP RANGE";
			textBuff = "+" + string(obj_itemContainer.pickupBuff) + "% FOR EACH";
			validDUP = 0;
		break;
		case spr_item_centre_donut:
			textDescr = "↑ PASSIVE HEAL";
			textBuff = "+" + string(obj_itemContainer.defHealBuff) + " FOR EACH";
			validDUP = 0;
		break;
		case spr_item_centre_scotch:
			textDescr = "↑ HERO MAX HP";
			textBuff = "+" + string(obj_itemContainer.hpBuff) + " FOR EACH";
			validDUP = 0;
		break;
		// рарные предметы - rare
	}
	draw_set_halign(fa_center);
	draw_set_color(colorDescr);					// цвет описания
	draw_text(x_descr, y_descr, textDescr);				// описание баффа предмета
	draw_set_color(colorBuffs);					// цвет значения баффа
	draw_text(x_descr, y_descr + 12, textBuff);			// значения баффа
	
	if validDUP = 1
	{
		draw_set_color(colorValid);				// цвет "valid DUP"
		draw_text(x_descr, y_descr + 28, "*DUP 0.35");
	}
	if validDUP = 2
	{
		draw_set_color(colorValid);				// цвет "valid DUP"
		draw_text(x_descr, y_descr + 28, "*DUP 0.80");
	}
	
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}