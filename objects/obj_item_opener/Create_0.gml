
createObj_text = 0;

nameItem = "Opener";
num = 1;
maxNum = 500;
sprite = spr_item_opener;

invType = global.inventory_1;
arrSize = global.arraySize_1;

shadowSprite = spr_shadow;
add_y = 3;

move_tick = random_range(0, 100);
move = 0;

sprite_set_offset(sprite_index, sprite_get_xoffset(spr_item_centreMask), sprite_get_yoffset(spr_item_centreMask));