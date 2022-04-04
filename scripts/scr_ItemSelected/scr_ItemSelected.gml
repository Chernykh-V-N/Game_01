// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ItemSelected(selected_itemName){
	switch (selected_itemName)
	{
		// common предметы
		case spr_item_centre_card:
			obj_spawnItem = obj_item_card;
		break;
		case spr_item_centre_rope:
			obj_spawnItem = obj_item_rope;
		break;
		case spr_item_centre_scotch:
			obj_spawnItem = obj_item_scotch;
		break;
		case spr_item_centre_glasses:
			obj_spawnItem = obj_item_glasses;
		break;
		case spr_item_centre_coffee:
			obj_spawnItem = obj_item_coffee;
		break;
		case spr_item_centre_opener:
			obj_spawnItem = obj_item_opener;
		break;
		case spr_item_centre_book:
			obj_spawnItem = obj_item_book;
		break;
		case spr_item_centre_donut:
			obj_spawnItem = obj_item_donut;
		break;
		case spr_item_centre_rock:
			obj_spawnItem = obj_item_rock;
		break;
	}
	instance_create_layer(obj_hero.x, obj_hero.y, "Instances", obj_spawnItem);
	instance_create_layer(obj_hero.x, obj_hero.y, "Instances", obj_coinsTakeEffect);
}