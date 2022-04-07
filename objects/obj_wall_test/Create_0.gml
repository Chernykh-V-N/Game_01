image_speed = 0;
image_index = 0;

local_height = sprite_get_height(sprite_index);
local_width = sprite_get_width(sprite_index);

with (instance_create_layer(x, y + 28, "shadow", obj_staticShadow))
{
	sprite_index = spr_shadow_wall2;
	image_index = 2;
	image_speed = 0;
	image_alpha = 0.3;
	image_blend = c_black;
}
