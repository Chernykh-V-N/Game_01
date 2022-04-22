/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

image_speed = 0;
image_index = 0;

local_height = sprite_get_height(sprite_index);
local_width = sprite_get_width(sprite_index);

instance_create_layer(x, y - 2, "Instances", obj_bench_with_barbell_barbell);
