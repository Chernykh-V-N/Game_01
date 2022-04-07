image_speed = 0;
image_index = 0;

local_height = 64;
local_width = 64;

with (instance_create_layer(x, y + 28, "shadow", obj_staticShadow))
{
	sprite_index = spr_shadow_wall;
	image_index = 2;
	image_speed = 0;
	image_alpha = 0.3;
	image_blend = c_black;
}
