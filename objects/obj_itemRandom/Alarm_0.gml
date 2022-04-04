// тут рандомизация предметов
ItemsList = ds_list_create();

if objRarity = 1 // HEROIC
{
	ds_list_add(ItemsList, spr_item_centre_opener);
	ds_list_add(ItemsList, spr_item_centre_rock);
	ds_list_add(ItemsList, spr_item_centre_book);
}
if objRarity = 2 // RARE
{
	ds_list_add(ItemsList, spr_item_centre_coffee);
	ds_list_add(ItemsList, spr_item_centre_card);
	ds_list_add(ItemsList, spr_item_centre_glasses);
}
if objRarity = 3 // COMMON
{
	ds_list_add(ItemsList, spr_item_centre_rope);
	ds_list_add(ItemsList, spr_item_centre_donut);
	ds_list_add(ItemsList, spr_item_centre_scotch);
}
	
var size = ds_list_size(ItemsList); //размер списка
	
Item_1_pos = irandom_range(0, size - 1);
Item_1 = ds_list_find_value(ItemsList, Item_1_pos);	// первый айтем
ds_list_delete(ItemsList, Item_1_pos);
	
Item_2_pos = irandom_range(0, size - 2);
Item_2 = ds_list_find_value(ItemsList, Item_2_pos); // второй айтем
ds_list_delete(ItemsList, Item_2_pos);
	
Item_3_pos = irandom_range(0, size - 3);
Item_3 = ds_list_find_value(ItemsList, Item_3_pos); // третий айтем
	
ds_list_destroy(ItemsList); // не засоряем память!!!
	
canShow = 1;