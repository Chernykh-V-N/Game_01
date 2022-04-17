// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function Wall_Create(sprite_wall, sprite_shadow, shadow_coords_x, shadow_coords_y)
{

image_speed = 0;
image_index = 0;


local_height = sprite_get_height(sprite_index);
local_width = sprite_get_width(sprite_index);

with (instance_create_layer(shadow_coords_x, shadow_coords_y, "shadow", obj_staticShadow))
{
	sprite_index = sprite_shadow;
	image_index = 2;
	image_speed = 0;
	image_alpha = 0.3;
	image_blend = c_black;
}

}